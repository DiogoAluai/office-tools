#/usr/bin/env bash

# sed will add '\r' character at the end of the line, just before '\n'
# this is needed because printer will not reset printing column to zero on line change with '\n' alone
cowsay-random $1 | sed 's/$/\r/' | office-print
