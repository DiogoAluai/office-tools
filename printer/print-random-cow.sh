#!/bin/bash

cowsay-random $1 | tr '\n' 'l' | sed 's/l/\r\n/g' | nc $PRINTER_IP 9100
