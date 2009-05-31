#!/bin/bash

. ./bsfl

LOG_ENABLED=y
LOG_FILE=my-log-file.log

START=`now`
log "-----------------------------------------------------------------"
log "This is my first log message it will not be displayed on screen."
msg "This is a display message that is also logged."
echo "Below is an empty messages"
msg 
msg_status "Raw status message." OK
msg_ok "OK message."
msg_not_ok "Not OK message."
msg_fail "Failed message."
msg_info "Informational message."
msg_warning "Warning message."
msg "This text is light blue." "$CYAN"
msg "This text is red." "$RED"
msg "This text is neutral."
msg "This is a blue line with status." "$BLUE"
display_status OK
cmd "ls -al"
cmd "ls /blabla"
cmd "sleep 2"
STOP=$(now)
DURATION=$(elapsed $START $STOP)
msg "Duration is $DURATION seconds." "$GREEN"
SYSLOG_ENABLED=yes
msg "This message is logged to syslog"
FILE=/etc/passwd
if file_exists $FILE
then
    msg_ok "File /etc/passwd exists."
else
    msg_fail "File /etc/passwd is mssing."
fi
echo a > replace.txt
echo b >> replace.txt
echo c >> replace.txt
str_replace_in_file b d replace.txt
VAR="a b c"
str_replace b d "$VAR"
check_status "$_" "$?"
ls > /dev/null
check_status "$_" "$?"
dir123 > /dev/null 2>&1
check_status "$_" "$?"
