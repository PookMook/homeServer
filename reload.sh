#!/bin/bash
docker-compose restart nginx-gen
sleep 5
docker-compose restart letsencrypt-nginx-proxy-companion
sleep 5
docker-compose restart nginx-reverse
