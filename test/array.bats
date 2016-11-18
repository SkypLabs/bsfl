#!/usr/bin/env bats
# -*- tab-width: 4; encoding: utf-8 -*-

load ../lib/bsfl

# array_append()
# --------------------------------------------------------------#

@test "array_append() with an empty value and array_size() should return 0" {
    array_append tab && [ "$?" -eq 0 ]

    run array_size tab
    [ "$status" -eq 0 ]
    [ "$output" -eq 0 ]
}

@test "array_append() with 'item1' and array_size() should return 1" {
    array_append tab 'item1' && [ "$?" -eq 0 ]

    run array_size tab
    [ "$status" -eq 0 ]
    [ "$output" -eq 1 ]

    array_print tab | grep -q item1
}

@test "array_append() with 'item1' 'item2' and array_size() should return 2" {
    array_append tab 'item1' 'item2' && [ "$?" -eq 0 ]

    run array_size tab
    [ "$status" -eq 0 ]
    [ "$output" -eq 2 ]

    array_print tab | grep -q item1
    array_print tab | grep -q item2
}

@test "array_append() with 'item1' 'item2' 'item3' and array_size() should return 3" {
    array_append tab 'item1' 'item2' 'item3' && [ "$?" -eq 0 ]

    run array_size tab
    [ "$status" -eq 0 ]
    [ "$output" -eq 3 ]

    array_print tab | grep -q item1
    array_print tab | grep -q item2
    array_print tab | grep -q item3
}
