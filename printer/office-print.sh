#!/usr/bin/bash

# A4 propotions are: 78 char long (does not depend on character) x 58 lines

# Note that printer will not reset printing column to zero on line change with '\n' alone
sed 's/$/\r/' | nc -q 0 $PRINTER_IP 9100
