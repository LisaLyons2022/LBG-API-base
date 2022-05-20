#!/bin/bash

#set variable
DOCKERHUB_USER=lisalyons22
APP_NAME=lbg-api-app

#build image
docker rmi -f ${DOCKERHUB_USER}/${APP_NAME} 
docker build -t ${DOCKERHUB_USER}/${APP_NAME} .

#push to dockerhub
docker push ${DOCKERHUB_USER}/${APP_NAME}

#run container from image
docker rm -f $APP_NAME}
docker run -d -p 80:4000 --name ${APP_NAME} ${DOCKERHUB_USER}/${APP_NAME}

docker system prune -f

