#!/usr/bin/env python3

#  Copyright (c) 2015 Majesty Software.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#
# Creates a Swift source file containing an enum encompassing the scripting
# class names for the SDEF file specified on the command line.
#
# Sample usage:
#
# sbsc.py App.sdef
#

import os
import string
import sys
from sbhc import enum_case


def transform(name_string):
    name_string = name_string.replace('"', '')
    name_string = name_string.replace('-', ' ')
    name_string = string.capwords(name_string.replace(' ', ''))
    return enum_case('', name_string)


def name_from_path(path):
    last_part = path.split("/")[-1]
    return last_part.split('.')[0]


def extract_cases(xpath, keyword):
    command_template = "xmllint --xpath '" + xpath + "' {} 2>/dev/null"
    pipe = os.popen(command_template.format(sys.argv[1]))
    raw_names = pipe.read()
    pipe.close()
    separator = keyword + "="
    names = set()
    for raw_name in raw_names.strip().split(separator):
        if len(raw_name.strip()):
            names.add(raw_name.strip())
    return names

enum_name = '{}Scripting'.format(name_from_path(sys.argv[1]))
out_file = open('{}.swift'.format(enum_name), 'w')

out_file.write('public enum {}: String {{\n'.format(enum_name))

names = extract_cases("//suite/class/@name", "name")
names = names.union(extract_cases("//suite/class-extension/@extends", "extends"))
names = list(names)
names.sort()

for name in names:
    out_file.write('    case {} = {}\n'.format(transform(name), name))

out_file.write('}\n')
out_file.close()
