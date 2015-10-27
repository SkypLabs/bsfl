#!/usr/bin/env bats

load ../lib/bsfl

@test "cmd() with an existing command" {
	run cmd 'ls'
	[ "$status" -eq 0 ]
	$(echo $output | grep -q 'OK')
}

@test "cmd() with an unknown command" {
	run cmd 'pnig 8.8.8.8'
	[ "$status" -eq 127 ]
	$(echo $output | grep -q 'FAILED')
}
