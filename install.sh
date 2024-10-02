#!/usr/bin/env bash

#
# Install scripts to /usr/local/bin
#

install_dir="/usr/local/bin"

# Install function
install_script() {
  if [ $# -ne 1 ]; then
    echo "Number of arguments provided for install function were... unreasonable"
    echo "Should've gotten one argument, instead got $#:"
    for arg in "$@"
    do
      echo -n "  $arg"
    done
    echo
    exit 1
  fi

  script_filepath="$1"
  script_filename="$(basename $script_filepath)"
  target_location="$install_dir/${script_filename%.*}" # remove extension
  echo "Installing $script_filepath"
  sudo cp "$script_filepath" "$target_location" || {
    echo "[ERROR] Could not copy, aborting install"
    exit 1
  }
  sudo chmod +x "$target_location"
}



# Install cowsay dependency if missing
if which cowsay >/dev/null; then
    echo "cowsay command found, skipping installation"
else
    echo "Installing cowsay"
    sudo apt install -y cowsay || {
    	echo "Could not install cowsay on my own, aborting"
	exit 1
    }
fi

install_script printer/find-printer.sh
install_script printer/make-list.py
install_script printer/cowsay-random.sh
install_script printer/print-random-cow.sh
