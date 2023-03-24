#/bin/bash
set -eux

# Don't run this script as root
[ ! "$UID" -eq 0 ] || { echo "This script must not be run as root."; exit 1;}

echo "Installing PIP"
python3 -m ensurepip --upgrade

echo "Installing konsave"
python3 -m pip install konsave

echo "Importing config"
konsave -i default.knsv

echo "Applying config"
konsave -a default

echo "Log out then log in to see changes, you may need to use X11 for activities to work correctly"