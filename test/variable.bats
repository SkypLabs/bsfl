#!/usr/bin/env bats
# -*- tab-width: 4; encoding: utf-8 -*-

load ../lib/bsfl

# defined()
# --------------------------------------------------------------#

@test "defined() with an existing variable" {
    var=

    run defined var
    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "defined() with an existing variable containing a value" {
    var='test'

    run defined var
    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "defined() with an unknown variable" {
    run defined var
    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

# has_value()
# --------------------------------------------------------------#

@test "has_value() with an existing variable" {
    var=

    run has_value var
    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

@test "has_value() with an existing variable containing a value" {
    var='test'

    run has_value var
    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "has_value() with an unknown variable" {
    run has_value var
    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

# option_enabled()
# --------------------------------------------------------------#

@test "option_enabled() with an unknown variable" {
    run option_enabled var
    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

@test "option_enabled() with an empty variable" {
    var=''

    run option_enabled var
    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

@test "option_enabled() with 'y'" {
    var='y'

    run option_enabled var
    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "option_enabled() with 'yes'" {
    var='yes'

    run option_enabled var
    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "option_enabled() with 'n'" {
    var='n'

    run option_enabled var
    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

@test "option_enabled() with 'no'" {
    var='no'

    run option_enabled var
    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

@test "option_enabled() with 'test'" {
    var='test'

    run option_enabled var
    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}
