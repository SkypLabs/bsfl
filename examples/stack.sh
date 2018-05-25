#!/usr/bin/env bash
# -*- tab-width: 4; encoding: utf-8 -*-

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../lib/bsfl.sh

# --------------------

msg "We place three integers on the stack using the 'stack_push' function." "$BOLD"

stack_push 1
stack_push 2
stack_push 3
echo

# --------------------

msg "We use the 'stack_pop' function to move the highest item of the stack into the 'REGISTER' variable and to delete it from the stack." "$BOLD"

stack_pop
echo

# --------------------

msg "We display 'REGISTER':" "$BOLD"

echo $REGISTER
