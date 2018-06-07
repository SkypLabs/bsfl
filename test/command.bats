#!/usr/bin/env bats
# -*- tab-width: 4; encoding: utf-8 -*-

load ../lib/bsfl

# cmd()
# --------------------------------------------------------------#

@test "cmd() with an existing command" {
    run cmd ls
    [ "$status" -eq 0 ]
    $(echo $output | grep -q 'OK')
}

@test "cmd() with an unknown command" {
    run cmd pnig 8.8.8.8
    [ "$status" -eq 127 ]
    $(echo $output | grep -q 'FAILED')
}
