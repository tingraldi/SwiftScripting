__author__ = 'tingraldi'

import sys

from clang.cindex import TranslationUnit
from clang.cindex import CursorKind
from clang.cindex import Config


Config.set_library_path("/Applications/Xcode.app//Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib")

keywords = ['class', 'deinit', 'enum', 'extension', 'func', 'import', 'init', 'internal', 'let', 'operator', 'private',
            'protocol', 'public', 'static', 'struct', 'subscript', 'typealias', 'var', 'break', 'case', 'continue',
            'default', 'do', 'else', 'fallthrough', 'for', 'if', 'in', 'return', 'switch', 'where', 'while', 'as',
            'dynamicType', 'false', 'is', 'nil', 'self', 'Self', 'super', 'true', 'associativity', 'convenience',
            'dynamic', 'didSet', 'final', 'get', 'infix', 'inout', 'lazy', 'left', 'mutating', 'none', 'nonmutating',
            'optional', 'override', 'postfix', 'precedence', 'prefix', 'Protocol', 'required', 'right', 'set', 'Type',
            'unowned', 'weak', 'willSet']

type_dict = {
             'BOOL': 'Bool',
             'double': 'Double',
             'NSInteger': 'Int',
             'NSString': 'String',
             'id': 'AnyObject',
             'NSArray': '[AnyObject]',
             'NSDictionary': '[NSObject : AnyObject]'
            }


def safe_name(name):
    return '`{}`'.format(name) if name in keywords else name

def type_for_type(objc_type):
    obj_type_string = objc_type.spelling.split(" ")[0]
    mapped_type = type_dict.get(obj_type_string, obj_type_string)
    if repr(objc_type.kind).startswith('TypeKind.OBJC'):
        mapped_type += '!'
    return mapped_type


class SBHeaderTranslator(object):
    def __init__(self, file_path):
        self.file_path = file_path
        id = open(file_path)
        self.lines = id.readlines()
        id.close()
        self.translation_unit = TranslationUnit.from_source(file_path, args=["-ObjC"])

    def line_comment(self, cursor):
        line = self.lines[cursor.location.line - 1]
        parts = line.strip().split('//')
        return ' //{}'.format(parts[1]) if len(parts) == 2 else ''

    def emit_property(self, cursor):
        tokens = self.translation_unit.get_tokens(extent=cursor.extent)
        get_set = 'get set'
        for word in (x.spelling for x in tokens):
            if word == 'readonly':
                get_set = 'get'
        swift_type = type_for_type(cursor.type)
        print('    optional var {}: {} {{ {} }}{}'.format(cursor.spelling, swift_type, get_set, self.line_comment(cursor)))

    def emit_function(self, cursor, accessors):
        if cursor.spelling not in accessors:
            func_name = cursor.spelling.split(':')[0]
            parameters = ['{}: {}'.format(safe_name(child.spelling), type_for_type(child.type)) for child in cursor.get_children() if child.kind == CursorKind.PARM_DECL]
            return_type = [child.type for child in cursor.get_children() if child.kind != CursorKind.PARM_DECL]
            if return_type:
                return_string = ' -> {}'.format(type_for_type(return_type[0]))
            else:
                return_string = ''
            print('    optional func {}({}){}{}'.format(func_name, ", ".join(parameters), return_string, self.line_comment(cursor)))

    def emit_protocol(self, cursor):
        print('@objc protocol {} {{'.format(cursor.spelling))
        superclass = 'SBObject'
        property_accessors = [child.spelling for child in cursor.get_children() if child.kind == CursorKind.OBJC_PROPERTY_DECL]
        property_setters = ['set{}{}:'.format(getter[0].capitalize(), getter[1:]) for getter in property_accessors]
        property_accessors += property_setters
        for child in cursor.get_children():
            if child.kind == CursorKind.OBJC_PROPERTY_DECL:
                self.emit_property(child)
            elif child.kind == CursorKind.OBJC_INSTANCE_METHOD_DECL:
                self.emit_function(child, property_accessors)
            elif child.kind == CursorKind.OBJC_SUPER_CLASS_REF and child.spelling.startswith('SB'):
                superclass = child.spelling
        print('}')
        print('extension {} : {} {{}}\n'.format(superclass, cursor.spelling))

    def walk(self, cursor):
        local_children = [child for child in cursor.get_children() if child.location.file and child.location.file.name == self.file_path]
        for child in local_children:
            if child.kind in (CursorKind.OBJC_INTERFACE_DECL, CursorKind.OBJC_CATEGORY_DECL):
                self.emit_protocol(child)

    def translate(self):
        for inclusion in self.translation_unit.get_includes():
            if inclusion.depth == 1:
                include = inclusion.include.name
                file_name = include.split("/")[-1]
                print('import {}'.format(file_name.split('.')[0]))
        print("")
        cursor = self.translation_unit.cursor
        self.walk(cursor)


def main(file_path):
    header_translator = SBHeaderTranslator(file_path)
    header_translator.translate()


if __name__ == '__main__':
    main(sys.argv[1])
