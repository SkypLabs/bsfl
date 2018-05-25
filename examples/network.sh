#!/usr/bin/env bash
# -*- tab-width: 4; encoding: utf-8 -*-

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../lib/bsfl.sh

# --------------------

msg "The 'is_ipv4' function is used to test if an address is an IPv4:" "$BOLD"

cmd "is_ipv4 8.8.8.8"
echo

# --------------------

msg "Along the same lines, the 'is_ipv4_subnet' and 'is_fqdn' functions are used to test respectively if an address is an IPv4 subnet or a FQDN:" "$BOLD"

cmd "is_ipv4_subnet 192.168.1.0/24"
cmd "is_fqdn www.example.net"
echo

# --------------------

msg "The 'mask2cidr' and 'cidr2mask' functions can be used to convert a mask form into another:" "$BOLD"

DEBUG='y'

cmd "mask2cidr 255.255.255.0"
cmd "cidr2mask 24"
