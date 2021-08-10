docker build -t postgres:ambari . && \
docker run --rm --name postgres \
       -p 5432:5432 \
       -d postgres:ambari