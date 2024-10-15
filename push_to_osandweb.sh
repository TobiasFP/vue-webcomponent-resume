#!/bin/bash
yarn build --prod
docker buildx build --platform=linux/arm/v7 . -t 192.168.0.210:5000/tobias_resume:latest --load
docker push 192.168.0.210:5000/tobias_resume:latest