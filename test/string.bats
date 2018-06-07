#!/usr/bin/env bats
# -*- tab-width: 4; encoding: utf-8 -*-

load ../lib/bsfl

# to_lower()
# --------------------------------------------------------------#

@test "to_lower() with an empty string" {
    run to_lower
    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "to_lower() with 'ToLower'" {
    run to_lower ToLower
    [ "$status" -eq 0 ]
    [ "$output" == 'tolower' ]
}

@test "to_lower() with 'TOLOWER'" {
    run to_lower TOLOWER
    [ "$status" -eq 0 ]
    [ "$output" == 'tolower' ]
}

@test "to_lower() with 'tolower'" {
    run to_lower tolower
    [ "$status" -eq 0 ]
    [ "$output" == 'tolower' ]
}

@test "to_lower() with 'Test String'" {
    run to_lower 'Test String'
    [ "$status" -eq 0 ]
    [ "$output" == 'test string' ]
}

@test "to_lower() with '@ToLower!'" {
    run to_lower '@ToLower!'
    [ "$status" -eq 0 ]
    [ "$output" == '@tolower!' ]
}

# to_upper()
# --------------------------------------------------------------#

@test "to_upper() with an empty string" {
    run to_upper
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "to_upper() with 'ToUpper'" {
    run to_upper ToUpper
    [ "$status" -eq 0 ]
    [ "$output" == 'TOUPPER' ]
}

@test "to_upper() with 'TOUPPER'" {
    run to_upper TOUPPER
    [ "$status" -eq 0 ]
    [ "$output" == 'TOUPPER' ]
}

@test "to_upper() with 'toupper'" {
    run to_upper toupper
    [ "$status" -eq 0 ]
    [ "$output" == 'TOUPPER' ]
}

@test "to_upper() with 'Test String'" {
    run to_upper 'Test String'
    [ "$status" -eq 0 ]
    [ "$output" == 'TEST STRING' ]
}

@test "to_upper() with '@ToUpper!'" {
    run to_upper '@ToUpper!'
    [ "$status" -eq 0 ]
    [ "$output" == '@TOUPPER!' ]
}

# str_replace()
# --------------------------------------------------------------#

@test "str_replace() with an empty string" {
    run str_replace r d
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "str_replace() with no letter to replace" {
    run str_replace r d etc
    [ "$status" -eq 0 ]
    [ "$output" == 'etc' ]
}

@test "str_replace() with one letter to replace" {
    run str_replace r d etcr
    [ "$status" -eq 0 ]
    [ "$output" == 'etcd' ]
}

@test "str_replace() with upper case" {
    run str_replace r d ETCR
    [ "$status" -eq 0 ]
    [ "$output" == 'ETCR' ]
}

@test "str_replace() with many replacements to do" {
    run str_replace r d rertrcr
    [ "$status" -eq 0 ]
    [ "$output" == 'dedtdcd' ]
}

@test "str_replace() with a two-word string" {
    run str_replace r d 'etcr etcr'
    [ "$status" -eq 0 ]
    [ "$output" == 'etcd etcd' ]
}

@test "str_replace() with one upper case letter to replace" {
    run str_replace R D etcR
    [ "$status" -eq 0 ]
    [ "$output" == 'etcD' ]
}

@test "str_replace() with no letter to replace and the final letter present in the input string" {
    run str_replace r d etcd
    [ "$status" -eq 0 ]
    [ "$output" == 'etcd' ]
}

# trim()
# --------------------------------------------------------------#

@test "trim() with an empty string" {
    run trim
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "trim() with nothing to trim" {
    run trim 'string'
    [ "$status" -eq 0 ]
    [ "$output" == 'string' ]
}

@test "trim() with spaces and tabs to trim" {
    run trim '    string    '
    [ "$status" -eq 0 ]
    [ "$output" == 'string' ]
}
