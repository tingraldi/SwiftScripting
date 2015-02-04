__author__ = 'tingraldi'

import sys
import os

type_dict = {
             "BOOL": "Bool",
             "double": "Double",
             "NSInteger": "Int",
             "NSString *": "String"
            }

def type_for_type(objc_type):
    parts = objc_type.split(" ")
    if parts[0] == 'id':
        mapped_type = 'Object!'
    else:
        mapped_type = type_dict.get(objc_type, parts[0])
        if len(parts) > 1 and parts[1] == '*':
            mapped_type += '!'
    return mapped_type

from clang.cindex import Index, CursorKind

print os.environ['LD_LIBRARY_PATH']

class SBHeaderTranslator(object):
    def __init__(self, file_path):
        self.file_path = file_path

    def emit_protocol(self, cursor):
        print('@objc protocol {} {{'.format(cursor.spelling))
        superclass = 'SBObject'
        for child in cursor.get_children():
            if child.kind == CursorKind.OBJC_PROPERTY_DECL:
                tokens = self.translation_unit.get_tokens(extent=child.extent)
                get_set = 'get set'
                for spelling in (x.spelling for x in tokens):
                    if spelling == 'readonly':
                        get_set = 'get'
                swift_type = type_for_type(child.type.spelling)
                print('optional var {}: {} {{ {} }}'.format(child.spelling, swift_type, get_set))
            elif child.kind == CursorKind.OBJC_INSTANCE_METHOD_DECL:
                print('// optional func {} ->'.format(child.spelling))
            elif child.kind == CursorKind.OBJC_SUPER_CLASS_REF and child.spelling.startswith("SB"):
                superclass = child.spelling
        print("}")
        print('extension {} : {} {{}}\n'.format(superclass, cursor.spelling))

    def walk(self, cursor):
        for child in cursor.get_children():
            if child.location.file and child.location.file.name == self.file_path:
                if child.kind in (CursorKind.OBJC_INTERFACE_DECL, CursorKind.OBJC_CATEGORY_DECL):
                    self.emit_protocol(child)
                else:
                    self.walk(child)

    def translate(self):
        index = Index.create()
        self.translation_unit = index.parse(self.file_path, args=["-ObjC"])
        for inclusion in self.translation_unit.get_includes():
            if inclusion.depth == 1:
                include = inclusion.include.name
                file_name = include.split("/")[-1]
                print("import {}".format(file_name.split(".")[0]))
        print("")
        cursor = self.translation_unit.cursor
        self.walk(cursor)


def main(file_path):
    header_translator = SBHeaderTranslator(file_path)
    header_translator.translate()


if __name__ == '__main__':
    main(sys.argv[1])
