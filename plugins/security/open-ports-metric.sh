#!/bin/bash

# prints all the open tcp and udp ports
# needs nmap to function
# and yes, those are gross bash one liners

ifconfig | grep -E "\s::1\s" -v | awk '/ inet6 / {print $2}' | xargs nmap -sU -sS -6 -p- \
         | grep -E "^[0-9]" | awk '/ open / {print $1" "$3}'                             \
         | tr "/" " " | awk -v hn="$(hostname)" '{print hn"."$2"6.open "$1" "$3}'


ifconfig | grep '127.0.0.1' -v | awk '/ inet / {print $2}' | xargs nmap -sU -sS -p-      \
         | grep -E "^[0-9]" | awk '/ open / {print $1" "$3}'                             \
         | tr "/" " " | awk -v hn="$(hostname)" '{print hn"."$2".open "$1" "$3}'

