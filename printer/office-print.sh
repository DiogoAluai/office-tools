#/usr/bin/env bash

# Note that printer will not reset printing column to zero on line change with '\n' alone
nc -q 0 $PRINTER_IP 9100
