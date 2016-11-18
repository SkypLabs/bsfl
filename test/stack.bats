#!/usr/bin/env bats
# -*- tab-width: 4; encoding: utf-8 -*-

load ../lib/bsfl

# stack_pop()
# --------------------------------------------------------------#

@test "stack_pop with no item pushed" {
    stack_pop && [ "$?" -eq 1 ]
    [ "$REGISTER" = '' ]
}

@test "stack_pop() with 1 item pushed" {
    stack_push item1

    stack_pop && [ "$?" -eq 0 ]
    [ "$REGISTER" = 'item1' ]

    stack_pop && [ "$?" -eq 1 ]
    [ "$REGISTER" = '' ]
}

@test "stack_pop() with 2 items pushed" {
    stack_push item1
    stack_push item2

    stack_pop && [ "$?" -eq 0 ]
    [ "$REGISTER" = 'item2' ]

    stack_pop && [ "$?" -eq 0 ]
    [ "$REGISTER" = 'item1' ]

    stack_pop && [ "$?" -eq 1 ]
    [ "$REGISTER" = '' ]
}

@test "stack_pop() with 3 items pushed" {
    stack_push item1
    stack_push item2
    stack_push item3

    stack_pop && [ "$?" -eq 0 ]
    [ "$REGISTER" = 'item3' ]

    stack_pop && [ "$?" -eq 0 ]
    [ "$REGISTER" = 'item2' ]

    stack_pop && [ "$?" -eq 0 ]
    [ "$REGISTER" = 'item1' ]

    stack_pop && [ "$?" -eq 1 ]
    [ "$REGISTER" = '' ]
}
