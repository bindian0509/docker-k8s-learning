# !/bin/bash

docker container prune -a
docker image prune -a
docker network create g-net
docker run --name mongodb --rm -d --network g-net mongo
docker build -t goals-node .
docker build -t goals-react .
docker run --name goals-frontend --rm -d -p 3000:3000 goals-react
docker run --name goals-backend --rm -d -p 80:80 --network g-net goals-node

# mongo with sec conf and volumes

docker run --name mongodb --rm -d -v data:/data/db --network g-net -e MONGO_INITDB_ROOT_USERNAME=root -e MONGO_INITDB_ROOT_PASSWORD=oracle mongo

# bind mount 
docker run --name goals-backend -v /Users/bharat.verma/code/personal/Docker_And_Kubernetes_2022/multi-containers/backend:/app -v logs:/app/logs -v /app/node_modules --rm -d -p 80:80 --network g-net goals-node