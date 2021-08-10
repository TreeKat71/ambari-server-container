cat hosts.txt  >>  /etc/hosts && \
ambari-server start && \
tail -f /var/log/ambari-server/ambari-server.log