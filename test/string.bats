#!/usr/bin/env bats

load ../lib/bsfl

@test "tolower() with an empty string" {
	run tolower
	[ "$status" -eq 0 ]
	[ "$output" == "" ]
}

@test "tolower() with 'ToLower'" {
	run tolower ToLower
	[ "$status" -eq 0 ]
	[ "$output" == 'tolower' ]
}

@test "tolower() with 'TOLOWER'" {
	run tolower TOLOWER
	[ "$status" -eq 0 ]
	[ "$output" == 'tolower' ]
}

@test "tolower() with 'tolower'" {
	run tolower tolower
	[ "$status" -eq 0 ]
	[ "$output" == 'tolower' ]
}

@test "tolower() with 'Test String'" {
	run tolower 'Test String'
	[ "$status" -eq 0 ]
	[ "$output" == 'test string' ]
}

@test "tolower() with '@ToLower!'" {
	run tolower '@ToLower!'
	[ "$status" -eq 0 ]
	[ "$output" == '@tolower!' ]
}

@test "toupper() with an empty string" {
	run toupper
	[ "$status" -eq 0 ]
	[ "$output" == '' ]
}

@test "toupper() with 'ToUpper'" {
	run toupper ToUpper
	[ "$status" -eq 0 ]
	[ "$output" == 'TOUPPER' ]
}

@test "toupper() with 'TOUPPER'" {
	run toupper TOUPPER
	[ "$status" -eq 0 ]
	[ "$output" == 'TOUPPER' ]
}

@test "toupper() with 'toupper'" {
	run toupper toupper
	[ "$status" -eq 0 ]
	[ "$output" == 'TOUPPER' ]
}

@test "toupper() with 'Test String'" {
	run toupper 'Test String'
	[ "$status" -eq 0 ]
	[ "$output" == 'TEST STRING' ]
}

@test "toupper() with '@ToUpper!'" {
	run toupper '@ToUpper!'
	[ "$status" -eq 0 ]
	[ "$output" == '@TOUPPER!' ]
}

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

@test "str_replace() with a letter to replace" {
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

@test "str_replace() with an upper case letter to replace" {
	run str_replace R D etcR
	[ "$status" -eq 0 ]
	[ "$output" == 'etcD' ]
}

@test "str_replace() with no letter to replace and the final letter presents in the input string" {
	run str_replace r d etcd
	[ "$status" -eq 0 ]
	[ "$output" == 'etcd' ]
}

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
	run trim '    string	'
	[ "$status" -eq 0 ]
	[ "$output" == 'string' ]
}
