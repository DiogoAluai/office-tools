#/usr/bin/env bash

cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1) "$1"
