#!/bin/bash

(figlet-centered "$1"; cowsay-random "$2" | horizontal-center-A4; figlet-centered "$3") | vertical-center-A4 | office-print
