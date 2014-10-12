#!/bin/bash

. ../src/bsfl.sh

# --------------------

msg "The 'file_exists' function is used to test if a (regular) file exists :" "$BOLD"

file_exists /etc/passwd
check_status 'file_exists /etc/passwd' $?
echo

# --------------------

msg "Along the same lines, the 'directory_exists' function is used to test if a directory exists :" "$BOLD"

directory_exists /etc/fake_dir
check_status 'directory_exists /etc/fake_dir' $?
echo

# --------------------

msg "In addition, to test if a device exists :" "$BOLD"

device_exists /dev/sda
check_status 'device_exists /dev/sda' $?
