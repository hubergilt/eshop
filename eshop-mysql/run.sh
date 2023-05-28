docker rm eshop-mysql
#docker run -it -p 3306:3306 -v mysql:/var/lib/mysql --network eshop-net --name eshop-mysql mysql:8.0
docker run -d -p 3306:3306 -v mysql:/var/lib/mysql --network eshop-net --name eshop-mysql mysql:8.0
