#!/usr/bin/env bats
# -*- tab-width: 4; encoding: utf-8 -*-

load ../lib/bsfl

setup() {
    > test_file
    mkdir test_dir
}

teardown() {
    rm -f test_file
    rm -rf test_dir
}

# file_exists()
# --------------------------------------------------------------#

@test "file_exists() on an existing file" {
    file_exists test_file
    [ "$output" == '' ]
}

@test "file_exists() on a non existent file" {
    run file_exists nonexistent_filename
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

# directory_exists()
# --------------------------------------------------------------#

@test "directory_exists() on an existing directory" {
    directory_exists test_dir
    [ "$output" == '' ]
}

@test "directory_exists() on a non existent directory" {
    run directory_exists nonexistent_dir
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

# device_exists()
# --------------------------------------------------------------#

@test "device_exists() on an existing device" {
    if [ ! -b "/dev/sda" ]
    then
        skip
    fi

    device_exists /dev/sda
    [ "$output" == '' ]
}

@test "device_exists() on a non existent device" {
    run device_exists /dev/fake_device
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}
