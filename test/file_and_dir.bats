#!/usr/bin/env bats

load ../lib/bsfl

setup() {
	> test_file
	mkdir test_dir
}

teardown() {
	rm -f test_file
	rm -rf test_dir
}

@test "file_exists() on an existing file" {
	file_exists test_file
}

@test "file_exists() on a non existent file" {
	run file_exists nonexistent_filename
	[ "$status" -eq 1 ]
}

@test "directory_exists() on an existing directory" {
	directory_exists test_dir
}

@test "directory_exists() on a non existent directory" {
	run directory_exists nonexistent_dir
	[ "$status" -eq 1 ]
}

@test "device_exists() on an existing device" {
	if [ ! -b "/dev/sda" ]
	then
		skip
	fi

	device_exists /dev/sda
}

@test "device_exists() on a non existent device" {
	run device_exists /dev/fake_device
	[ "$status" -eq 1 ]
}
