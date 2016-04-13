docker rm -f $(docker ps -a -q)

clear
docker-compose rm

image clear
docker rm -f $(docker ps -a -q)
#docker rmi $(docker images -q -f "dangling=true")

docker-compose rm
docker-compose up -d

#docker exec web0 env > ./Code/web0/.env

function ip() {
    docker-machine ip
}

echo "ip"
dockerIP=`ip`
echo $dockerIP':80'
echo

open 'http://'$dockerIP':8001'

docker exec -ti web-big-query bash
