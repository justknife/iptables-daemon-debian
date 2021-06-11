#!/bin/bash
# Only debian supported

chmod +x iptables.init
mv ./iptables.service /etc/systemd/system/
mv ./functions /etc/init.d/
iptables-save > /etc/iptables
mkdir /usr/lib/iptables
mv ./iptables.init /usr/lib/iptables
systemctl daemon-reload
systemctl start iptables