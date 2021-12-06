#!/usr/bin/env python3

import sys, os

linelist = list(sys.stdin)

# gets the biggest line
biggest_line_size = 0
for line in linelist:
    line_length = len(line.expandtabs())
    if line_length > biggest_line_size:
        biggest_line_size = line_length

columns = int(os.popen('tput cols', 'r').read())
offset = biggest_line_size / 2
perfect_center = columns / 2
padsize =  int(perfect_center - offset)
spacing = ' ' * padsize # space char

text = str()
for line in linelist:
    text += (spacing + line)

# divider = spacing + ('─' * int(biggest_line_size)) # unicode 0x2500
# text += divider

print(text, end="\n"*2)
