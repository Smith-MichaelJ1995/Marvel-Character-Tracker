#!/bin/bash
docker exec `docker ps -q --filter "name=flask"` python PrimaryController.py
docker exec -it `docker ps -q --filter "name=flask"` /bin/bash