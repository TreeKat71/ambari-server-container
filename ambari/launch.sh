image=$1
docker run --rm -d \
           -p 8080:8080 \
           -p 8440:8440 \
           -p 8441:8441 \
           --hostname ambari-servers\
           $image