#!/usr/bin/env bats

load ../lib/bsfl

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
