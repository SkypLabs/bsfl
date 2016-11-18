#!/usr/bin/env bats
# -*- tab-width: 4; encoding: utf-8 -*-

load ../lib/bsfl

# is_ipv4()
# --------------------------------------------------------------#

@test "is_ipv4() with an empty string" {
    run is_ipv4 ''
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '.'" {
    run is_ipv4 .
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '..'" {
    run is_ipv4 ..
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '...'" {
    run is_ipv4 ...
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '....'" {
    run is_ipv4 ....
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '122'" {
    run is_ipv4 122
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '122.122'" {
    run is_ipv4 122.122
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '122.122.122'" {
    run is_ipv4 122.122.122
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '122.122.122.122'" {
    run is_ipv4 122.122.122.122
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '122.122.122.122.122'" {
    run is_ipv4 122.122.122.122.122
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '333'" {
    run is_ipv4 333
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '333.333'" {
    run is_ipv4 333.333
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '333.333.333'" {
    run is_ipv4 333.333.333
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '333.333.333.333'" {
    run is_ipv4 333.333.333.333
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '333.333.333.333.333'" {
    run is_ipv4 333.333.333.333.333
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '12f'" {
    run is_ipv4 12f
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '12f.12f'" {
    run is_ipv4 12f.12f
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '12f.12f.12f'" {
    run is_ipv4 12f.12f.12f
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '12f.12f.12f.12f'" {
    run is_ipv4 12f.12f.12f.12f
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '12f.12f.12f.12f.12f'" {
    run is_ipv4 12f.12f.12f.12f.12f
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '1000'" {
    run is_ipv4 1000
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '1000.1000'" {
    run is_ipv4 1000.1000
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '1000.1000.1000'" {
    run is_ipv4 1000.1000.1000
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '1000.1000.1000.1000'" {
    run is_ipv4 1000.1000.1000.1000
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '1000.1000.1000.1000.1000'" {
    run is_ipv4 1000.1000.1000.1000.1000
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '333.222.222.222'" {
    run is_ipv4 333.222.222.222
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '222.333.222.222'" {
    run is_ipv4 222.333.222.222
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '222.222.333.222'" {
    run is_ipv4 222.222.333.222
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '222.222.222.333'" {
    run is_ipv4 222.222.222.333
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '333.333.222.222'" {
    run is_ipv4 333.333.222.222
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '222.333.333.222'" {
    run is_ipv4 222.333.333.222
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '222.222.333.333'" {
    run is_ipv4 222.222.333.333
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '333.333.333.222'" {
    run is_ipv4 333.333.333.222
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '222.333.333.333'" {
    run is_ipv4 222.333.333.333
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '12f.122.122.122'" {
    run is_ipv4 12f.122.122.122
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '122.12f.122.122'" {
    run is_ipv4 122.12f.122.122
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '122.122.12f.122'" {
    run is_ipv4 122.122.12f.122
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '122.122.122.12f'" {
    run is_ipv4 122.122.122.12f
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '12f.12f.122.122'" {
    run is_ipv4 12f.12f.122.122
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '122.12f.12f.122'" {
    run is_ipv4 122.12f.12f.122
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '122.122.12f.12f'" {
    run is_ipv4 122.122.12f.12f
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '12f.12f.12f.122'" {
    run is_ipv4 12f.12f.12f.122
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '122.12f.12f.12f'" {
    run is_ipv4 122.12f.12f.12f
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '.111.111.111'" {
    run is_ipv4 .111.111.111
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '122..111.111'" {
    run is_ipv4 122..111.111
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '122.122..111'" {
    run is_ipv4 122.122..111
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '122.122.122.'" {
    run is_ipv4 122.122.122.
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '1000.222.222.222'" {
    run is_ipv4 1000.222.222.222
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '222.1000.222.222'" {
    run is_ipv4 222.1000.222.222
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '222.222.1000.222'" {
    run is_ipv4 222.222.1000.222
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '222.222.222.1000'" {
    run is_ipv4 222.222.222.1000
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '1000.1000.222.222'" {
    run is_ipv4 1000.1000.222.222
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '222.1000.1000.222'" {
    run is_ipv4 222.1000.1000.222
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '222.222.1000.1000'" {
    run is_ipv4 222.222.1000.1000
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '1000.1000.1000.222'" {
    run is_ipv4 1000.1000.1000.222
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '222.1000.1000.1000'" {
    run is_ipv4 222.1000.1000.1000
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '192.168.1.1'" {
    run is_ipv4 192.168.1.1
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '0.0.0.0'" {
    run is_ipv4 0.0.0.0
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4() with '255.255.255.255'" {
    run is_ipv4 255.255.255.255
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

# is_fqdn()
# --------------------------------------------------------------#

@test "is_fqdn() with 'www.google.com'" {
    run is_fqdn www.google.com
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_fqdn() with 'www.google.com.'" {
    run is_fqdn www.google.com.
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_fqdn() with 'localhost.local'" {
    run is_fqdn localhost.local
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_fqdn() with 'www.google.com.com'" {
    run is_fqdn www.google.com.com
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_fqdn() with 'r5---sn-cg07luek.googlevideo.com'" {
    run is_fqdn r5---sn-cg07luek.googlevideo.com
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_fqdn() with 'www.www.google.com'" {
    run is_fqdn www.www.google.com
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_fqdn() with 'www.a./.com'" {
    run is_fqdn 'www.a./.com'
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_fqdn() with 'www.attr@ctiveworld.com'" {
    run is_fqdn www.attr@ctiveworld.com
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_fqdn() with 'www.~.com'" {
    run is_fqdn 'www.~.com'
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_fqdn() with 'www.\x41.com'" {
    run is_fqdn 'www.\x41.com'
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_fqdn() with 'azertyuiop'" {
    run is_fqdn azertyuiop
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_fqdn() with an IPv4" {
    run is_fqdn 192.168.1.1
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_fqdn() with an IPv6" {
    run is_fqdn 2001:db8:1f89:0:0:0:0:0
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

# is_ipv4_netmask()
# --------------------------------------------------------------#

@test "is_ipv4_netmask() with an empty input" {
    run is_ipv4_netmask
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_netmask() with an empty string" {
    run is_ipv4_netmask ''
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_netmask() with 'test'" {
    run is_ipv4_netmask test
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_netmask() with '255'" {
    run is_ipv4_netmask 255
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_netmask() with '255.255'" {
    run is_ipv4_netmask 255.255
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_netmask() with '192.255.255.0'" {
    run is_ipv4_netmask 192.255.255.0
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_netmask() with '255.192.255.0'" {
    run is_ipv4_netmask 255.192.255.0
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_netmask() with '48.255.128.0'" {
    run is_ipv4_netmask 48.255.128.0
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_netmask() with '255.48.255.0'" {
    run is_ipv4_netmask 255.48.255.0
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_netmask() with '255.0.255.0'" {
    run is_ipv4_netmask 255.0.255.0
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_netmask() with '0.255.255.0'" {
    run is_ipv4_netmask 0.255.255.0
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_netmask() with '255.255.255.0'" {
    run is_ipv4_netmask 255.255.255.0
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4_netmask() with '128.0.0.0'" {
    run is_ipv4_netmask 128.0.0.0
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4_netmask() with '255.240.0.0'" {
    run is_ipv4_netmask 255.240.0.0
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

# is_ipv4_cidr()
# --------------------------------------------------------------#

@test "is_ipv4_cidr() with an empty input" {
    run is_ipv4_cidr
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_cidr() with an empty string" {
    run is_ipv4_cidr ''
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_cidr() with '-1'" {
    run is_ipv4_cidr -1
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_cidr() with 'test'" {
    run is_ipv4_cidr 'test'
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_cidr() with '3f'" {
    run is_ipv4_cidr '3f'
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_cidr() with '0'" {
    run is_ipv4_cidr 0
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4_cidr() with '1'" {
    run is_ipv4_cidr 1
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4_cidr() with '10'" {
    run is_ipv4_cidr 10
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4_cidr() with '24'" {
    run is_ipv4_cidr 24
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4_cidr() with '32'" {
    run is_ipv4_cidr 32
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4_cidr() with '33'" {
    run is_ipv4_cidr 33
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

# is_ipv4_subnet()
# --------------------------------------------------------------#

@test "is_ipv4_subnet() with '192.168.1.0/24'" {
    run is_ipv4_subnet 192.168.1.0/24
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '10.0.1.0/8'" {
    run is_ipv4_subnet 10.0.1.0/8
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '172.16.1.0/16'" {
    run is_ipv4_subnet 172.16.1.0/16
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '172.16.1.1/25'" {
    run is_ipv4_subnet 172.16.1.1/25
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '192.168.1.0/04'" {
    run is_ipv4_subnet 192.168.1.0/04
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '0.0.0.0/0'" {
    run is_ipv4_subnet 0.0.0.0/0
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '172.16.1.0/0'" {
    run is_ipv4_subnet 172.16.1.0/0
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '172.16.1.0/00'" {
    run is_ipv4_subnet 172.16.1.0/00
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '172.16.1.4/32'" {
    run is_ipv4_subnet 172.16.1.4/32
    [ "$status" -eq 0 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with an empty string" {
    run is_ipv4_subnet ''
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '192.168.1.0/24f'" {
    run is_ipv4_subnet 192.168.1.0/24f
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '10.0.1.0/1++'" {
    run is_ipv4_subnet 10.0.1.0/1++
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '10.0.1.0/-1'" {
    run is_ipv4_subnet 10.0.1.0/-1
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '10.0.1.0//'" {
    run is_ipv4_subnet 10.0.1.0/it
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '10.0.1.0/:'" {
    run is_ipv4_subnet 10.0.1.0/:
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '172.16.1.0//16'" {
    run is_ipv4_subnet 172.16.1.0//16
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '0x7f.16.1.0/16'" {
    run is_ipv4_subnet 0x7f.16.1.0/16
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '10...0/8'" {
    run is_ipv4_subnet 10...0/8
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '172.16.1.0\16'" {
    run is_ipv4_subnet 172.16.1.0\16
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '10.10.1.8.0/24'" {
    run is_ipv4_subnet 10.10.1.8.0/24
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '10.24.1\\.0/24'" {
    run is_ipv4_subnet 10.24.1\\.0/24
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '10.0.1.1o1/24'" {
    run is_ipv4_subnet 10.0.1.1o1/24
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "is_ipv4_subnet() with '10.0.1.0/8.0/24'" {
    run is_ipv4_subnet 10.0.1.0/8.0/24
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

# get_ipv4_network()
# --------------------------------------------------------------#

@test "get_ipv4_network() with an empty input" {
    run get_ipv4_network
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "get_ipv4_network() with an empty string" {
    run get_ipv4_network ''
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "get_ipv4_network() with 'test'" {
    run get_ipv4_network test
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "get_ipv4_network() with 'test test'" {
    run get_ipv4_network test test
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "get_ipv4_network() with '192.168.1.1'" {
    run get_ipv4_network 192.168.1.1
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "get_ipv4_network() with '192.168.1.1 192.255.255.0'" {
    run get_ipv4_network 192.168.1.1 192.255.255.0
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "get_ipv4_network() with '423.168.1.1 255.255.255.0'" {
    run get_ipv4_network 423.168.1.1 255.255.255.0
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "get_ipv4_network() with '192.168.1.1 255.255.255.0'" {
    run get_ipv4_network 192.168.1.1 255.255.255.0
    [ "$status" -eq 0 ]
    [ "$output" == '192.168.1.0' ]
}

# get_ipv4_broadcast()
# --------------------------------------------------------------#

@test "get_ipv4_broadcast() with an empty input" {
    run get_ipv4_broadcast
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "get_ipv4_broadcast() with an empty string" {
    run get_ipv4_broadcast ''
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "get_ipv4_broadcast() with 'test'" {
    run get_ipv4_broadcast test
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "get_ipv4_broadcast() with 'test test'" {
    run get_ipv4_broadcast test test
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "get_ipv4_broadcast() with '192.168.1.1'" {
    run get_ipv4_broadcast 192.168.1.1
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "get_ipv4_broadcast() with '192.168.1.1 192.255.255.0'" {
    run get_ipv4_broadcast 192.168.1.1 192.255.255.0
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "get_ipv4_broadcast() with '423.168.1.1 255.255.255.0'" {
    run get_ipv4_broadcast 423.168.1.1 255.255.255.0
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "get_ipv4_broadcast() with '192.168.1.1 255.255.255.0'" {
    run get_ipv4_broadcast 192.168.1.1 255.255.255.0
    [ "$status" -eq 0 ]
    [ "$output" == '192.168.1.255' ]
}

# mask2cidr()
# --------------------------------------------------------------#

@test "mask2cidr() with an empty string" {
    run mask2cidr ''
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "mask2cidr() with '255.255.255.0'" {
    run mask2cidr 255.255.255.0
    [ "$status" -eq 0 ]
    [ "$output" == '24' ]
}

@test "mask2cidr() with '255.255.255.255.0'" {
    run mask2cidr 255.255.255.255.0
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "mask2cidr() with '278.255.255.0'" {
    run mask2cidr 278.255.255.0
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "mask2cidr() with '25f.255.255.0'" {
    run mask2cidr 25f.255.255.0
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "mask2cidr() with '255.0.255.0'" {
    run mask2cidr 255.0.255.0
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

# cidr2mask()
# --------------------------------------------------------------#

@test "cidr2mask() with '0'" {
    run cidr2mask 0
    [ "$status" -eq 0 ]
    [ "$output" == '0.0.0.0' ]
}

@test "cidr2mask() with '24'" {
    run cidr2mask 24
    [ "$status" -eq 0 ]
    [ "$output" == '255.255.255.0' ]
}

@test "cidr2mask() with '32'" {
    run cidr2mask 32
    [ "$status" -eq 0 ]
    [ "$output" == '255.255.255.255' ]
}

@test "cidr2mask() with an empty string" {
    run cidr2mask ''
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "cidr2mask() with '33'" {
    run cidr2mask 33
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "cidr2mask() with '3f'" {
    run cidr2mask 3f
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}

@test "cidr2mask() with '-3'" {
    run cidr2mask -3
    [ "$status" -eq 1 ]
    [ "$output" == '' ]
}
