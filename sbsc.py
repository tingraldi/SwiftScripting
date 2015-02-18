#!/usr/bin/env python2.7

import os
import string
import sys


def transform(name_string):
    name_string = string.replace(name_string, '"', '')
    name_string = string.replace(name_string, '-', ' ')
    return string.replace(string.capwords(name_string), ' ', '')


def name_from_path(path):
    last_part = path.split("/")[-1]
    return last_part.split('.')[0]


command_template = "xmllint --xpath '//suite/class/@name' {}"

pipe = os.popen(command_template.format(sys.argv[1]))
raw_names = pipe.read()
pipe.close()

enum_name = '{}ScriptingClass'.format(name_from_path(sys.argv[1]))
out_file = open('{}.swift'.format(enum_name), 'w')

out_file.write('public enum {}: String {{\n'.format(enum_name))

for raw_name in raw_names.strip().split("name="):
    if len(raw_name.strip()):
        out_file.write('    case {} = {}\n'.format(transform(raw_name), raw_name.strip()))

out_file.write('}\n')
