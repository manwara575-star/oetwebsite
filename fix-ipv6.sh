#!/bin/bash
set -e
cat >/etc/exim4/exim4.conf.localmacros <<'EOF'
disable_ipv6
EOF
update-exim4.conf
pkill -9 exim4 || true
service exim4 start || /etc/init.d/exim4 start || true
sleep 3
exim -bP disable_ipv6 || true
service exim4 status || /etc/init.d/exim4 status || true