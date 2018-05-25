#!/usr/bin/env bash
# -*- tab-width: 4; encoding: utf-8 -*-

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../lib/bsfl.sh

# --------------------

msg "The 'file_exists' function is used to test if a (regular) file exists:" "$BOLD"

cmd file_exists /etc/passwd
echo

# --------------------

msg "Along the same lines, the 'directory_exists' function is used to test if a directory exists:" "$BOLD"

cmd directory_exists /etc/fake_dir
echo

# --------------------

msg "In addition, to test if a device exists:" "$BOLD"

cmd device_exists /dev/sda
