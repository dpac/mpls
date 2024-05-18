#!/bin/bash
pid="$(docker inspect -f '{{.State.Pid}}' "$1")"
mkdir -p /var/run/netns
ln -sf /proc/$pid/ns/net "/var/run/netns/$1"
ip netns exec $1 bash /root/script.sh

