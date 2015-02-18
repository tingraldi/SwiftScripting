#!/usr/bin/env python2.7

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
