#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../lib/bsfl.sh

# --------------------

msg "We create an array named 'tab' and we append to it three strings using 'array_append' function." "$BOLD"

array_append tab "item1" "item2" "item3"
echo

# --------------------

msg "We display the number of elements in 'tab' using 'array_size' function :" "$BOLD"

array_size tab
echo

# --------------------

msg "We display all items of 'tab' using 'array_print' function :" "$BOLD"

array_print tab
