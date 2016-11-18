#!/usr/bin/env bats
# -*- tab-width: 4; encoding: utf-8 -*-

load ../lib/bsfl

# elapsed()
# --------------------------------------------------------------#

@test "elapsed() with two empty values" {
    run elapsed '' ''
    [ "$status" -eq 0 ]
    [ "$output" = '0' ]
}

@test "elapsed() with an empty value as first parameter" {
    run elapsed '' '10'
    [ "$status" -eq 0 ]
    [ "$output" = '10' ]
}

@test "elapsed() with an empty value as second parameter" {
    run elapsed '10' ''
    [ "$status" -eq 0 ]
    [ "$output" = '-10' ]
}

@test "elapsed() with '10' and '15'" {
    run elapsed 10 15
    [ "$status" -eq 0 ]
    [ "$output" = '5' ]
}

@test "elapsed() with '15' and '10'" {
    run elapsed 15 10
    [ "$status" -eq 0 ]
    [ "$output" = '-5' ]
}

# start_watch() and stop_watch()
# --------------------------------------------------------------#

@test "start_watch() and stop_watch() with a 3s interval" {
    start_watch
    sleep 3
    run stop_watch
    [ "$status" -eq 0 ]
    [ "$output" = '3' ]
}

@test "start_watch() and stop_watch() with a 5s interval" {
    start_watch
    sleep 5
    run stop_watch
    [ "$status" -eq 0 ]
    [ "$output" = '5' ]
}

@test "start_watch() and stop_watch() with a 7s interval" {
    start_watch
    sleep 7
    run stop_watch
    [ "$status" -eq 0 ]
    [ "$output" = '7' ]
}

@test "stop_watch() without start_watch()" {
    run stop_watch
    [ "$status" -eq 1 ]
    [ "$output" = '' ]
}
