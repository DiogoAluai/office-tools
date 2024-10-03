#!/usr/bin/bash

cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1) "$1"
