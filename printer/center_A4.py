#!/usr/bin/python2

import sys

# Find index or fail
def first_non_empty_string_index(strings):
    for i, s in enumerate(strings):
        if s.strip():
            return i
    print("Did not find non-empty string")
    sys.exit(1)

# Find index or fail
def last_non_empty_string_index(strings):
    for i in range(len(strings) - 1, -1, -1):
        if strings[i].strip():
            return i
    print("Did not find non-empty string")
    sys.exit(1)

# Find index or return -1
def first_non_whitespace_index(s):
    stripped_string = s.lstrip()
    if not stripped_string:
        return -1
    return len(s) - len(stripped_string)

# Find index or return -1
def last_non_whitespace_index(s):
    for i in range(len(s) - 1, -1, -1):
        if not s[i].isspace():
            return i
    return -1

def print_lines(line_count):
    for i in range(0, line_count):
        print("")

# ---------------------------------------------------------

A4_ROWS = 58
A4_COLS = 78

lines = sys.stdin.read().splitlines()

minX = first_non_empty_string_index(lines)
maxX = last_non_empty_string_index(lines)
minY = 0
maxY = last_non_whitespace_index(lines[0])

for line in lines:
    firsCharIndex = first_non_whitespace_index(line)
    if firsCharIndex != -1:
        minY = min(minY, firsCharIndex)
    maxY = max(maxY, last_non_whitespace_index(line))

lenX = maxX - minX + 1
lenY = maxY - minY + 1

if (lenX > A4_ROWS or lenX <= 0):
    print("Line count " + lenX + " is not in ]0, 58[")
    sys.exit()

if (lenY > A4_COLS or lenY <= 0):
    print("Column count " + lenY + " is not in ]0, 78[")
    sys.exit()

linePadding = A4_ROWS - lenX
halfLinePadding = linePadding / 2 # line loss for odd padding

columnPadding = A4_COLS - lenY
halfColumnPadding = columnPadding / 2 # column loss for odd padding


print_lines(halfLinePadding)
for line in lines:
    print(" " * halfColumnPadding + line)
print_lines(halfLinePadding)






