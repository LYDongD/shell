#!/bin/bash

IFACE=en0
IP_ADDRESS=192.168.8.122
MASK=255.255.255.0
GW=192.168.8.1

if [ $UID -ne 0 ]; then
    echo "should run as root"
    exit 1
fi

/sbin/ifconfig $IFACE down

/sbin/ifconfig $IFACE $IP_ADDRESS netmask $MASK

route add default $GW

echo Successfully configured $IFACE


