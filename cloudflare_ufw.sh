echo "Vist my project https://github.com/ST4RCHASER"
echo "[WARN]This script is danger because this script will block all traffic except cloudflare ips"
read -p "If you want continue pass ANYKEY, CTRL+C to cancel"
# Source:
# https://www.cloudflare.com/ips
# https://support.cloudflare.com/hc/en-us/articles/200169166-How-do-I-whitelist-CloudFlare-s-IP-addresses-in-iptables-
# https://gist.github.com/Manouchehri/cdd4e56db6596e7c3c5a
for i in `curl https://www.cloudflare.com/ips-v4`; do ufw allow from $i; done
for i in `curl https://www.cloudflare.com/ips-v6`; do ufw allow from $i; done

echo "Script finished"