#!/bin/sh

docker run --name mymongo -p27017:27017 -d -v $HOME/Projects/docker/data/mongo:/data/db -v $HOME/Projects/docker/logs/mongo:/logs jmreif/mongodb
#TEST docker run --name mymongo -p27017:27017 -v $HOME/Projects/docker/data/mongo:/data/db -v $HOME/Projects/docker/logs/mongo:/logs jmreif/mongodb
docker ps
