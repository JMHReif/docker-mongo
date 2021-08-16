#!/bin/sh

docker run --name mymongo -p27017:27017 \
    -e MONGO_INITDB_ROOT_USERNAME=mongoadmin \
    -e MONGO_INITDB_ROOT_PASSWORD=Testing123 \
    -d -v $HOME/Projects/docker/data/mongo:/data/db \
    -v $HOME/Projects/docker/logs/mongo:/logs \
    -v $HOME/Projects/docker/tmp/mongo:/tmp \
    jmreif/mongodb
#TEST docker run --name mymongo -p27017:27017 -v $HOME/Projects/docker/data/mongo:/data/db -v $HOME/Projects/docker/logs/mongo:/logs jmreif/mongodb
docker ps
