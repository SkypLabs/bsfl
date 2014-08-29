#!/bin/bash

. ../src/bsfl.sh

# --------------------

msg "We define an initial string and we manipulate it using functions :" "$BOLD"
echo

str='  refiNE	'
msg "Initial string : '$str'" "$BOLD"
echo

# --------------------

msg "After using 'trim' function :" "$BOLD"

trim $str
echo

# --------------------

msg "After using 'toupper' function :" "$BOLD"

toupper $str
echo

# --------------------

msg "After using 'tolower' function :" "$BOLD"

tolower $str
echo

# --------------------

msg "After using 'str_replace' function :" "$BOLD"

str_replace r d $str
