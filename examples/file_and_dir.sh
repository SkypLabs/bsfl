#!/bin/bash

. ../src/bsfl.sh

# --------------------

msg "The 'file_exists' function is used to test if a file exists :" "$BOLD"

file_exists /etc/passwd
check_status 'file_exists /etc/passwd' $?
echo

# --------------------

msg "Along the same lines, the 'directory_exists' function is used to test if a directory exists :" "$BOLD"

directory_exists /etc/fake_dir
check_status 'directory_exists /etc/fake_dir' $?
