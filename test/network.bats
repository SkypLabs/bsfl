#!/usr/bin/env bats

load ../lib/bsfl

@test "is_ipv4() with an empty string" {
	run is_ipv4 ''
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '.'" {
	run is_ipv4 .
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '.'" {
	run is_ipv4 .
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '..'" {
	run is_ipv4 ..
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '...'" {
	run is_ipv4 ...
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '....'" {
	run is_ipv4 ....
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '122'" {
	run is_ipv4 122
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '122.122'" {
	run is_ipv4 122.122
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '122.122.122'" {
	run is_ipv4 122.122.122
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '122.122.122.122'" {
	run is_ipv4 122.122.122.122
	[ "$status" -eq 0 ]
}

@test "is_ipv4() with '122.122.122.122.122'" {
	run is_ipv4 122.122.122.122.122
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '333'" {
	run is_ipv4 333
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '333.333'" {
	run is_ipv4 333.333
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '333.333.333'" {
	run is_ipv4 333.333.333
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '333.333.333.333'" {
	run is_ipv4 333.333.333.333
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '333.333.333.333.333'" {
	run is_ipv4 333.333.333.333.333
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '12f'" {
	run is_ipv4 12f
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '12f.12f'" {
	run is_ipv4 12f.12f
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '12f.12f.12f'" {
	run is_ipv4 12f.12f.12f
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '12f.12f.12f.12f'" {
	run is_ipv4 12f.12f.12f.12f
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '12f.12f.12f.12f.12f'" {
	run is_ipv4 12f.12f.12f.12f.12f
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '1000'" {
	run is_ipv4 1000
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '1000.1000'" {
	run is_ipv4 1000.1000
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '1000.1000.1000'" {
	run is_ipv4 1000.1000.1000
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '1000.1000.1000.1000'" {
	run is_ipv4 1000.1000.1000.1000
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '1000.1000.1000.1000.1000'" {
	run is_ipv4 1000.1000.1000.1000.1000
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '333.222.222.222'" {
	run is_ipv4 333.222.222.222
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '222.333.222.222'" {
	run is_ipv4 222.333.222.222
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '222.222.333.222'" {
	run is_ipv4 222.222.333.222
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '222.222.222.333'" {
	run is_ipv4 222.222.222.333
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '333.333.222.222'" {
	run is_ipv4 333.333.222.222
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '222.333.333.222'" {
	run is_ipv4 222.333.333.222
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '222.222.333.333'" {
	run is_ipv4 222.222.333.333
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '333.333.333.222'" {
	run is_ipv4 333.333.333.222
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '222.333.333.333'" {
	run is_ipv4 222.333.333.333
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '12f.122.122.122'" {
	run is_ipv4 12f.122.122.122
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '122.12f.122.122'" {
	run is_ipv4 122.12f.122.122
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '122.122.12f.122'" {
	run is_ipv4 122.122.12f.122
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '122.122.122.12f'" {
	run is_ipv4 122.122.122.12f
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '12f.12f.122.122'" {
	run is_ipv4 12f.12f.122.122
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '122.12f.12f.122'" {
	run is_ipv4 122.12f.12f.122
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '122.122.12f.12f'" {
	run is_ipv4 122.122.12f.12f
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '12f.12f.12f.122'" {
	run is_ipv4 12f.12f.12f.122
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '122.12f.12f.12f'" {
	run is_ipv4 122.12f.12f.12f
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '.111.111.111'" {
	run is_ipv4 .111.111.111
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '122..111.111'" {
	run is_ipv4 122..111.111
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '122.122..111'" {
	run is_ipv4 122.122..111
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '122.122.122.'" {
	run is_ipv4 122.122.122.
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '1000.222.222.222'" {
	run is_ipv4 1000.222.222.222
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '222.1000.222.222'" {
	run is_ipv4 222.1000.222.222
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '222.222.1000.222'" {
	run is_ipv4 222.222.1000.222
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '222.222.222.1000'" {
	run is_ipv4 222.222.222.1000
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '1000.1000.222.222'" {
	run is_ipv4 1000.1000.222.222
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '222.1000.1000.222'" {
	run is_ipv4 222.1000.1000.222
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '222.222.1000.1000'" {
	run is_ipv4 222.222.1000.1000
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '1000.1000.1000.222'" {
	run is_ipv4 1000.1000.1000.222
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '222.1000.1000.1000'" {
	run is_ipv4 222.1000.1000.1000
	[ "$status" -eq 1 ]
}

@test "is_ipv4() with '192.168.1.1'" {
	run is_ipv4 192.168.1.1
	[ "$status" -eq 0 ]
}

@test "is_ipv4() with '0.0.0.0'" {
	run is_ipv4 0.0.0.0
	[ "$status" -eq 0 ]
}

@test "is_ipv4() with '255.255.255.255'" {
	run is_ipv4 255.255.255.255
	[ "$status" -eq 0 ]
}
