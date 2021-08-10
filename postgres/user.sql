GRANT ALL PRIVILEGES ON DATABASE ambari TO ambari;
\connect ambari;
CREATE SCHEMA ambari AUTHORIZATION ambari;
ALTER SCHEMA ambari OWNER TO ambari;
ALTER ROLE ambari SET search_path to 'ambari', 'public';