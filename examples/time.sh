#!/bin/bash

. ../src/bsfl.sh

# --------------------

msg "We start the watch using 'start_watch' function." "$BOLD"

start_watch
echo

# --------------------

cmd "sleep 3"
echo

# --------------------

msg "We stop the watch using 'stop_watch' function." "$BOLD"

stop_watch
echo

# --------------------

msg "Another way : we use an arbitrary variable to store the current timestamp returned by the 'now' function." "$BOLD"

START=$(now)
echo

# --------------------

cmd "sleep 3"
echo

# --------------------

msg "One more time with another arbitrary variable." "$BOLD"

STOP=$(now)
echo

# --------------------

msg "And now, we use the 'elapsed' function with our two variables as parameters to display the elapsed time :" "$BOLD"

elapsed $START $STOP
