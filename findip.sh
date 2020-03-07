#! /bin/bash
echo "Enter the MAC address to search"
read mac
result=$(arp-scan -l | grep "$mac" | awk '{print $1}')
if [ $result ]; then
    echo "The IP address for device $mac is $result"
else
    echo "No result, device not on network"
fi
