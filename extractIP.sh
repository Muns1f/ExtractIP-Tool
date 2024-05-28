#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "File '$1' not found."
    exit 1
fi

ip_addresses=$(grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" "$1")

echo "Extracted IP addresses from '$1':"
echo "$ip_addresses" | sort | uniq
                                       
