#!/bin/sh
#

/usr/local/bin/redis-server /etc/redis/redis.conf
/etc/init.d/smb start
/etc/init.d/mysqld start
/etc/init.d/tengine start
/usr/local/tomcat-7.0.42/bin/tomcat.sh
/sbin/iptables -F
