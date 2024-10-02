#/usr/bin/env bash

# Note that printer will not reset printing column to zero on line change with '\n' alone
nc $PRINTER_IP 9100
