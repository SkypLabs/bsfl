#!/bin/bash

. ../src/bsfl.sh

# --------------------

msg "We use the 'cmd' function to execute a command and to display its status :" "$BOLD"

cmd "ls -al"
echo

cmd "fake_cmd"
echo

# --------------------

msg "As you can see, the command's result is not displayed. If you want to, you have to enable the debug mode using 'DEBUG' variable :" "$BOLD"

DEBUG=1
cmd "ls -al"
