#!/usr/bin/env bash
# -*- tab-width: 4; encoding: utf-8 -*-

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../lib/bsfl.sh

# --------------------

msg "This is a classic displayed message using the 'msg' function."
echo

# --------------------

msg "This is a red displayed message using the 'msg' function with color parameter." "$RED"
echo

# --------------------

msg_status "This is a displayed message with its status given as parameter using the 'msg_status' function." "PASSED"
echo

# --------------------

msg_alert "This is a displayed message with its status using the 'msg_alert' function."
echo

# --------------------

msg_critical "This is a displayed message with its status using the 'msg_critical' function."
echo

# --------------------

msg_debug "This is a displayed message with its status using the 'msg_debug' function."
echo

# --------------------

msg_emergency "This is a displayed message with its status using the 'msg_emergency' function."
echo

# --------------------

msg_error "This is a displayed message with its status using the 'msg_error' function."
echo

# --------------------

msg_failed "This is a displayed message with its status using the 'msg_failed' function."
echo

# --------------------

msg_info "This is a displayed message with its status using the 'msg_info' function."
echo

# --------------------

msg_not_ok "This is a displayed message with its status using the 'msg_not_ok' function."
echo

# --------------------

msg_notice "This is a displayed message with its status using the 'msg_notice' function."
echo

# --------------------

msg_ok "This is a displayed message with its status using the 'msg_ok' function."
echo

# --------------------

msg_passed "This is a displayed message with its status using the 'msg_passed' function."
echo

# --------------------

msg_success "This is a displayed message with its status using the 'msg_success' function."
echo

# --------------------

msg_warning "This is a displayed message with its status using the 'msg_warning' function."
echo
