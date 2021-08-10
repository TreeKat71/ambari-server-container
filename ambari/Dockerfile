FROM centos:7

ARG DB_TYPE
ARG DB_HOST
ARG DB_PORT
ARG DB_NAME
ARG DB_USER
ARG DB_PWD
ARG MPACK_URL
COPY example.repo /etc/yum.repos.d/ambari.repo

# Install ambari-server, ntp, ssh client
RUN set -ex \
    && yum install epel-release ambari-server openssh-clients ntp -y \
    && systemctl enable ntpd \
# Config ambari-server database
    && ambari-server setup -s \
        --database=$DB_TYPE \
        --databasehost=$DB_HOST \
        --databaseport=$DB_PORT \
        --databasename=$DB_NAME \
        --databaseusername=$DB_USER \
        --databasepassword=$DB_PWD \
# Install mpack
    && ambari-server install-mpack --mpack=$MPACK_URL --verbose \
    && yum clean all

COPY entry.sh .
COPY hosts.txt .

CMD ["/bin/bash", "entry.sh"]
