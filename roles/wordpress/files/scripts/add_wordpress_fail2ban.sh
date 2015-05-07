#!/bin/bash

echo -e '[wordpress]\nenabled = true\nfilter = wordpress\nlogpath = /var/log/messages\nport = http, https\nmaxretry = 3\naction = iptables-allports[name=wordpress, protocol=all]\nbantime = 600' >> /etc/fail2ban/jail.conf
