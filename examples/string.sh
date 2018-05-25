#!/usr/bin/env bash
# -*- tab-width: 4; encoding: utf-8 -*-

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../lib/bsfl.sh

# --------------------

msg "We define an initial string and we manipulate it using functions:" "$BOLD"
echo

str='  refiNE	'
msg "Initial string: '$str'" "$BOLD"
echo

# --------------------

msg "After using the 'trim' function:" "$BOLD"

trim $str
echo

# --------------------

msg "After using the 'to_upper' function:" "$BOLD"

to_upper $str
echo

# --------------------

msg "After using the 'to_lower' function:" "$BOLD"

to_lower $str
echo

# --------------------

msg "After using the 'str_replace' function:" "$BOLD"

str_replace r d $str
