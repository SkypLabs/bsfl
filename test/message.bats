#!/usr/bin/env bats
# -*- tab-width: 4; encoding: utf-8 -*-

load ../lib/bsfl

# msg()
# --------------------------------------------------------------#

@test "msg() with a simple message" {
    run msg 'Test message'
    [ "$status" -eq 0 ]
    [ "$output" = 'Test message' ]
}

@test "msg() with a color argument" {
    run msg 'Test message' "$RED"
    [ "$status" -eq 0 ]
    [ "$output" = 'Test message' ]
}

@test "msg() with an unknown color argument" {
    run msg 'Test message' "$DREEN"
    [ "$status" -eq 0 ]
    [ "$output" = 'Test message' ]
}

# msg_status()
# --------------------------------------------------------------#

@test "msg_status() without a status argument" {
    run msg_status 'Test message'
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'Test message')
    $(echo $output | grep -q 'UNDEFINED')
}

# msg_alert()
# --------------------------------------------------------------#

@test "msg_alert() with no message" {
    run msg_alert
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'no message received')
    $(echo $output | grep -q 'ALERT')
}

@test "msg_alert() with a simple message" {
    run msg_alert 'Test message'
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'Test message')
    $(echo $output | grep -q 'ALERT')
}

# msg_critical()
# --------------------------------------------------------------#

@test "msg_critical() with no message" {
    run msg_critical
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'no message received')
    $(echo $output | grep -q 'CRITICAL')
}

@test "msg_critical() with a simple message" {
    run msg_critical 'Test message'
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'Test message')
    $(echo $output | grep -q 'CRITICAL')
}

# msg_debug()
# --------------------------------------------------------------#

@test "msg_debug() with no message" {
    run msg_debug
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'no message received')
    $(echo $output | grep -q 'DEBUG')
}

@test "msg_debug() with a simple message" {
    run msg_debug 'Test message'
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'Test message')
    $(echo $output | grep -q 'DEBUG')
}

# msg_emergency()
# --------------------------------------------------------------#

@test "msg_emergency() with no message" {
    run msg_emergency
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'no message received')
    $(echo $output | grep -q 'EMERGENCY')
}

@test "msg_emergency() with a simple message" {
    run msg_emergency 'Test message'
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'Test message')
    $(echo $output | grep -q 'EMERGENCY')
}

# msg_error()
# --------------------------------------------------------------#

@test "msg_error() with no message" {
    run msg_error
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'no message received')
    $(echo $output | grep -q 'ERROR')
}

@test "msg_error() with a simple message" {
    run msg_error 'Test message'
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'Test message')
    $(echo $output | grep -q 'ERROR')
}

# msg_failed()
# --------------------------------------------------------------#

@test "msg_failed() with no message" {
    run msg_failed
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'no message received')
    $(echo $output | grep -q 'FAILED')
}

@test "msg_failed() with a simple message" {
    run msg_failed 'Test message'
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'Test message')
    $(echo $output | grep -q 'FAILED')
}

# msg_info()
# --------------------------------------------------------------#

@test "msg_info() with no message" {
    run msg_info
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'no message received')
    $(echo $output | grep -q 'INFO')
}

@test "msg_info() with a simple message" {
    run msg_info 'Test message'
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'Test message')
    $(echo $output | grep -q 'INFO')
}

# msg_not_ok()
# --------------------------------------------------------------#

@test "msg_not_ok() with no message" {
    run msg_not_ok
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'no message received')
    $(echo $output | grep -q 'NOT OK')
}

@test "msg_not_ok() with a simple message" {
    run msg_not_ok 'Test message'
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'Test message')
    $(echo $output | grep -q 'NOT OK')
}

# msg_notice()
# --------------------------------------------------------------#

@test "msg_notice() with no message" {
    run msg_notice
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'no message received')
    $(echo $output | grep -q 'NOTICE')
}

@test "msg_notice() with a simple message" {
    run msg_notice 'Test message'
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'Test message')
    $(echo $output | grep -q 'NOTICE')
}

# msg_ok()
# --------------------------------------------------------------#

@test "msg_ok() with no message" {
    run msg_ok
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'no message received')
    $(echo $output | grep -q 'OK')
}

@test "msg_ok() with a simple message" {
    run msg_ok 'Test message'
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'Test message')
    $(echo $output | grep -q 'OK')
}

# msg_passed()
# --------------------------------------------------------------#

@test "msg_passed() with no message" {
    run msg_passed
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'no message received')
    $(echo $output | grep -q 'PASSED')
}

@test "msg_passed() with a simple message" {
    run msg_passed 'Test message'
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'Test message')
    $(echo $output | grep -q 'PASSED')
}

# msg_success()
# --------------------------------------------------------------#

@test "msg_success() with no message" {
    run msg_success
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'no message received')
    $(echo $output | grep -q 'SUCCESS')
}

@test "msg_success() with a simple message" {
    run msg_success 'Test message'
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'Test message')
    $(echo $output | grep -q 'SUCCESS')
}

# msg_warning()
# --------------------------------------------------------------#

@test "msg_warning() with no message" {
    run msg_warning
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'no message received')
    $(echo $output | grep -q 'WARNING')
}

@test "msg_warning() with a simple message" {
    run msg_warning 'Test message'
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'Test message')
    $(echo $output | grep -q 'WARNING')
}
