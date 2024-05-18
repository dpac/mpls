ip link add dev BOSTON type vrf table 100
ip link set dev BOSTON up
ip link set dev eth1 master BOSTON

ip link add dev PEGA type vrf table 101
ip link set dev PEGA up
ip link set dev eth2 master PEGA
