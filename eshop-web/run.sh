docker rm eshop
#docker run -it -p 8080:8080 --network eshop-net --link eshop-mysql --name eshop eshop
docker run -d -p 8080:8080 --network eshop-net --link eshop-mysql --name eshop eshop 
