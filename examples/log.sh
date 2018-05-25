#!/usr/bin/env bash
# -*- tab-width: 4; encoding: utf-8 -*-

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../lib/bsfl.sh

# --------------------

msg "The 'LOG_ENABLED' variable is used to enable the logs whereas 'LOG_FILE' is used to specify the logs file name." "$BOLD"

LOG_ENABLED=y
echo

# --------------------

msg "Thus, this message is logged in a file as you can see:" "$BOLD"

DEBUG=y
cmd "cat $LOG_FILE"
echo

# --------------------

msg "With the 'SYSLOG_ENABLED' variable, you can choose to log your messages using syslog in addition to the file." "$BOLD"
echo

# --------------------

msg "The 'log_status' function is used to log a message with the status given as parameter." "$BOLD"

log_status "This is a test message." INFO
echo

# --------------------

log_alert "This is a logged message using the 'log_alert' function."

# --------------------

log_critical "This is a logged message using the 'log_critical' function."

# --------------------

log_debug "This is a logged message using the 'log_debug' function."

# --------------------

log_emergency "This is a logged message using the 'log_emergency' function."

# --------------------

log_error "This is a logged message using the 'log_error' function."

# --------------------

log_failed "This is a logged message using the 'log_failed' function."

# --------------------

log_info "This is a logged message using the 'log_info' function."

# --------------------

log_not_ok "This is a logged message using the 'log_not_ok' function."

# --------------------

log_notice "This is a logged message using the 'log_notice' function."

# --------------------

log_ok "This is a logged message using the 'log_ok' function."

# --------------------

log_passed "This is a logged message using the 'log_passed' function."

# --------------------

log_success "This is a logged message using the 'log_success' function."

# --------------------

log_warning "This is a logged message using the 'log_warning' function."

# --------------------

msg "A variety of functions can be used to log messages with different status:" "$BOLD"

cmd "cat $LOG_FILE"
