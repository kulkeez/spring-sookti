#!/bin/bash
echo "Launching Spring-Sookti Docker Container ..."
sudo docker run --rm --name SpringSookti -d --net="host" kulkeez/spring-sookti:0.1
