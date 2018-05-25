#!/usr/bin/env bash
# -*- tab-width: 4; encoding: utf-8 -*-

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../lib/bsfl.sh

# --------------------

msg "We start the watch using the 'start_watch' function." "$BOLD"

start_watch
echo

# --------------------

cmd "sleep 3"
echo

# --------------------

msg "We stop the watch using the 'stop_watch' function which returns the time elapsed." "$BOLD"

time_elapsed=$(stop_watch)
msg "Time elapsed : $time_elapsed"
echo

# --------------------

msg "Another way: we use an arbitrary variable to store the current timestamp returned by the 'now' function." "$BOLD"

START=$(now)
echo

# --------------------

cmd "sleep 2"
echo

# --------------------

msg "One more time with another arbitrary variable." "$BOLD"

STOP=$(now)
echo

# --------------------

msg "And now, we use the 'elapsed' function with our two variables as parameters to get the elapsed time:" "$BOLD"

time_elapsed=$(elapsed $START $STOP)
msg "Time elapsed : $time_elapsed"
