#!/bin/bash
# Modify script as per your setup
# Usage: Sample firewall script
# Source: https://www.cyberciti.biz/faq/iptables-read-and-block-ips-subnets-from-text-file/
# ---------------------------
_input=./v4_blocklist.db
_pub_if="enp8s0"
IPT=/sbin/iptables

# Die if file not found
[ ! -f "$_input" ] && { echo "$0: File $_input not found."; exit 1; }

echo "Vist my project https://github.com/ST4RCHASER"
echo "[WARN]This script is danger because this script will block all traffic in blocklist"
read -p "If you want continue pass ANYKEY, CTRL+C to cancel"

egrep -v "^#|^$" x | while IFS= read -r ip
do
        # Append everything to droplist
        ufw deny from $ip to any
        echo "[Block list added]"
        echo $ip
done <"${_input}"
echo "Script finished"