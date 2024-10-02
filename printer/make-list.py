#!/usr/bin/env python2

import itertools
import sys

def ip_range(input_string):
    octets = input_string.split('.')
    chunks = [map(int, octet.split('-')) for octet in octets]
    ranges = [range(c[0], c[1] + 1) if len(c) == 2 else c for c in chunks]

    for address in itertools.product(*ranges):
        yield '.'.join(map(str, address))
try:
	for address in ip_range(sys.argv[1]):
		print(address)

except Exception as c:
	print(c)
	print()
	print("Run with python2, and provide ip range")
	print("Example: python2 192.168.1-2.1-12")
