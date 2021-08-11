Ambari Server
------------
### How to use

1. Replace example.repo with your own repo source.
2. Prepare your own host list (nodes to be setup as hadoop cluster)
3. Build your own container image with arguments shown below:
    - DB_TYPE: type of the external database [embedded | oracle | mysql | mssql | postgres | sqlanywhere]
    - DB_HOST
    - DB_PORT
    - DB_NAME
    - DB_USER
    - DB_PWD
    - MPACK_URL: management packs repository url


4. Launch your ambari server

        $ sh ./launch.sh <your_image:tag>

### Requirement
1. Enable NTP 
2. FQDN setup (optional)
3. DNS setup (DNS or /etc/hosts file)
4. ssh private key (provid it via web interface during installation)
5. 8080, 8440, 8441 should be opened


Hadoop Cluster Nodes
------------
### Requirement
1. Enable NTP
2. FQDN setup
3. DNS setup (DNS or /etc/hosts file)
4. SSH setup
