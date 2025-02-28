#!/usr/bin/env bash

##
## Print a pdf file
##


if [ $# -ne 1 ]; then
    echo "Usage: $(basename $0) file.pdf"
    exit 1
fi

if [ -z "$PRINTER_IP" ]; then
  echo "Env PRINTER_IP is empty. Please setup/run 'export PRINTER_IP=\"10.10.printer.ip\"'"
  exit 1
fi


pdf_file="$1"

nc -q 0 $PRINTER_IP 9100 < $pdf_file

