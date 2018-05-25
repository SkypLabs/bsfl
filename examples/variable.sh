#!/usr/bin/env bash
# -*- tab-width: 4; encoding: utf-8 -*-

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../lib/bsfl.sh

# --------------------

msg "We use the 'defined' function to test if the variable 'var' is defined:" "$BOLD"

cmd defined var
echo

# --------------------

msg "Now with the variable 'var' defined:" "$BOLD"

var='test'
cmd defined var
echo

# --------------------

msg "The 'has_value' function returns true if the variable given as parameter has a value:" "$BOLD"

cmd has_value var
echo

# --------------------

msg "The 'option_enabled' function allows to test if a variable is set to 'y' or 'yes':" "$BOLD"

cmd option_enabled var
