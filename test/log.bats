#!/usr/bin/env bats
# -*- tab-width: 4; encoding: utf-8 -*-

load ../lib/bsfl

setup() {
    LOG_FILE=/tmp/bats_bsfl.log
}

teardown() {
    rm -f $LOG_FILE
}

# log()
# --------------------------------------------------------------#

@test "log() with 'LOG_ENABLED=no'" {
    log 'Test log message' && [ "$?" -eq 0 ]

    [ ! -f "$LOG_FILE" ]
}

@test "log() with an empty message" {
    LOG_ENABLED=yes
    log && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'empty log message, no input received' $LOG_FILE
}

@test "log() with 'LOG_ENABLED=yes'" {
    LOG_ENABLED=yes
    log 'Test log message' && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'Test log message' $LOG_FILE
}

# msg() (for its ability to log messages)
# --------------------------------------------------------------#

@test "msg() with 'LOG_ENABLED=no'" {
    msg 'Test message' && [ "$?" -eq 0 ]

    [ ! -f "$LOG_FILE" ]
}

@test "msg() with an empty message and with 'LOG_ENABLED=yes'" {
    LOG_ENABLED=yes
    msg && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'empty log message, no input received' $LOG_FILE
}

@test "msg() with 'LOG_ENABLED=yes'" {
    LOG_ENABLED=yes
    msg 'Test message' && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'Test message' $LOG_FILE
}

# log_status()
# --------------------------------------------------------------#

@test "log_status() with an empty message" {
    LOG_ENABLED=yes
    log_status && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'empty log message, no input received' $LOG_FILE
}

@test "log_status() with no status parameter" {
    LOG_ENABLED=yes
    log_status 'Test log message' && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'Test log message' $LOG_FILE
}

@test "log_status() with a status parameter" {
    LOG_ENABLED=yes
    log_status 'Test log message' INFO && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'INFO' $LOG_FILE
    grep 'Test log message' $LOG_FILE
}

# log_alert()
# --------------------------------------------------------------#

@test "log_alert() with no message" {
    LOG_ENABLED=yes
    log_alert && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'empty log message, no input received' $LOG_FILE
}

@test "log_alert() with a simple message" {
    LOG_ENABLED=yes
    log_alert 'Test log message' && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'ALERT' $LOG_FILE
    grep 'Test log message' $LOG_FILE
}

# log_critical()
# --------------------------------------------------------------#

@test "log_critical() with no message" {
    LOG_ENABLED=yes
    log_critical && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'empty log message, no input received' $LOG_FILE
}

@test "log_critical() with a simple message" {
    LOG_ENABLED=yes
    log_critical 'Test log message' && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'CRITICAL' $LOG_FILE
    grep 'Test log message' $LOG_FILE
}

# log_debug()
# --------------------------------------------------------------#

@test "log_debug() with no message" {
    LOG_ENABLED=yes
    log_debug && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'empty log message, no input received' $LOG_FILE
}

@test "log_debug() with a simple message" {
    LOG_ENABLED=yes
    log_debug 'Test log message' && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'DEBUG' $LOG_FILE
    grep 'Test log message' $LOG_FILE
}

# log_emergency()
# --------------------------------------------------------------#

@test "log_emergency() with no message" {
    LOG_ENABLED=yes
    log_emergency && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'empty log message, no input received' $LOG_FILE
}

@test "log_emergency() with a simple message" {
    LOG_ENABLED=yes
    log_emergency 'Test log message' && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'EMERGENCY' $LOG_FILE
    grep 'Test log message' $LOG_FILE
}

# log_error()
# --------------------------------------------------------------#

@test "log_error() with no message" {
    LOG_ENABLED=yes
    log_error && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'empty log message, no input received' $LOG_FILE
}

@test "log_error() with a simple message" {
    LOG_ENABLED=yes
    log_error 'Test log message' && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'ERROR' $LOG_FILE
    grep 'Test log message' $LOG_FILE
}

# log_failed()
# --------------------------------------------------------------#

@test "log_failed() with no message" {
    LOG_ENABLED=yes
    log_failed && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'empty log message, no input received' $LOG_FILE
}

@test "log_failed() with a simple message" {
    LOG_ENABLED=yes
    log_failed 'Test log message' && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'FAILED' $LOG_FILE
    grep 'Test log message' $LOG_FILE
}

# log_info()
# --------------------------------------------------------------#

@test "log_info() with no message" {
    LOG_ENABLED=yes
    log_info && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'empty log message, no input received' $LOG_FILE
}

@test "log_info() with a simple message" {
    LOG_ENABLED=yes
    log_info 'Test log message' && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'INFO' $LOG_FILE
    grep 'Test log message' $LOG_FILE
}

# log_not_ok()
# --------------------------------------------------------------#

@test "log_not_ok() with no message" {
    LOG_ENABLED=yes
    log_not_ok && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'empty log message, no input received' $LOG_FILE
}

@test "log_not_ok() with a simple message" {
    LOG_ENABLED=yes
    log_not_ok 'Test log message' && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'NOT_OK' $LOG_FILE
    grep 'Test log message' $LOG_FILE
}

# log_notice()
# --------------------------------------------------------------#

@test "log_notice() with no message" {
    LOG_ENABLED=yes
    log_notice && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'empty log message, no input received' $LOG_FILE
}

@test "log_notice() with a simple message" {
    LOG_ENABLED=yes
    log_notice 'Test log message' && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'NOTICE' $LOG_FILE
    grep 'Test log message' $LOG_FILE
}

# log_ok()
# --------------------------------------------------------------#

@test "log_ok() with no message" {
    LOG_ENABLED=yes
    log_ok && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'empty log message, no input received' $LOG_FILE
}

@test "log_ok() with a simple message" {
    LOG_ENABLED=yes
    log_ok 'Test log message' && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'OK' $LOG_FILE
    grep 'Test log message' $LOG_FILE
}

# log_passed()
# --------------------------------------------------------------#

@test "log_passed() with no message" {
    LOG_ENABLED=yes
    log_passed && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'empty log message, no input received' $LOG_FILE
}

@test "log_passed() with a simple message" {
    LOG_ENABLED=yes
    log_passed 'Test log message' && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'PASSED' $LOG_FILE
    grep 'Test log message' $LOG_FILE
}

# log_success()
# --------------------------------------------------------------#

@test "log_success() with no message" {
    LOG_ENABLED=yes
    log_success && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'empty log message, no input received' $LOG_FILE
}

@test "log_success() with a simple message" {
    LOG_ENABLED=yes
    log_success 'Test log message' && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'SUCCESS' $LOG_FILE
    grep 'Test log message' $LOG_FILE
}

# log_warning()
# --------------------------------------------------------------#

@test "log_warning() with no message" {
    LOG_ENABLED=yes
    log_warning && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'empty log message, no input received' $LOG_FILE
}

@test "log_warning() with a simple message" {
    LOG_ENABLED=yes
    log_warning 'Test log message' && [ "$?" -eq 0 ]

    [ -f "$LOG_FILE" ]
    grep 'WARNING' $LOG_FILE
    grep 'Test log message' $LOG_FILE
}
