#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../lib/bsfl.sh

# --------------------

msg "We use the 'defined' function to test if the variable 'var' is defined :" "$BOLD"

defined var
check_status "defined var" $?
echo

# --------------------

msg "Now with the variable 'var' defined :" "$BOLD"

var='test'
defined var
check_status "defined var" $?
echo

# --------------------

msg "The 'has_value' function returns true if the variable given as parameter has a value :" "$BOLD"

has_value var
check_status "has_value var" $?
echo

# --------------------

msg "The 'option_enabled' function allows to test if a variable is set to 'y' or 'yes' :" "$BOLD"

option_enabled var
check_status 'option_enabled var' $?
