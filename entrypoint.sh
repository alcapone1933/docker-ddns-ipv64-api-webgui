#!/usr/bin/env bash
# set -x
set -e
DATUM=$(date +%Y-%m-%d\ %H:%M:%S)
# cleanup
cleanup() {
    echo "===================================== STOP DDNS API GUI ====================================="
}

# Trap SIGTERM
trap 'cleanup' SIGTERM
sleep 2
echo "===================================== START DDNS API GUI  ====================================="
if ! curl -sSL --fail https://ipv64.net/ > /dev/null; then
    echo "$DATUM  FEHLER !!!  - 404 Sie haben kein Netzwerk oder Internetzugang oder die Webseite ipv64.net ist nicht erreichbar"
	exit 0
fi
cp /app/conf/runners/API-IPv64.json.default /app/conf/runners/API-IPv64.json

# DOMAIN_KEY=1234567890abcdefghijklmn
# DOMAIN_IPV64=deine-domain.ipv64.net
# DOMAIN_API=123456787654321234567876543

# sed -i "s/1234567890abcdefghijklmn/${DOMAIN_KEY}/g" /app/conf/runners/API-IPv64.json
# sed -i "s/deine-domain.ipv64.net/${DOMAIN_IPV64}/g" /app/conf/runners/API-IPv64.json
sed -i "s/123456787654321234567876543/${DOMAIN_API}/g" /app/conf/runners/API-IPv64.json

set  /usr/bin/python3 /app/launcher.py "$@"
exec "$@" &

wait $!
