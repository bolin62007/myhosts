#!/bin/sh
# add by tianbaoha
/root/thunder/start.sh start
/root/1quicklink/myhosts/updatehosts.sh
#killall dnsmasq && dnsmasq -C /opt/etc/dnsmasq.d/dnsmasq.conf