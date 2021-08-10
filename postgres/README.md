Declaration: This image is only for testing purpose, please setup your own database as your external backend.


How to use
------------
Just run the command below and you will get a postgreSQL for ambari.

    $ sh renew.sh


Explanation
------------
1. user.sql: create a user for Ambari and grant it permissions.

2. init.sql: Load the Ambari Server database schema. 

    > You must pre-load the Ambari database schema into your PostgreSQL database using the schema script. Find the Ambari-DDL-Postgres-CREATE.sql file in the /var/lib/ambari-server/resources/ directory of the Ambari Server host after you have installed Ambari Server.

[Cloudera Reference](https://docs.cloudera.com/HDPDocuments/Ambari-latest/administering-ambari/content/amb_using_ambari_with_postgresql.html)