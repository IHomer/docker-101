# scratch file for docker 101
exit;


docker ps
# nothing is running

docker run busybox sleep 10
# we are waiting 10 seconds

docker ps -a
# we see that there was a container running

docker run busybox sleep 1000
# keeps running

docker ps
# runnign instance visisble

docker stop
# container is stopped

docker ps -a
# exited with !0 status

docker rm [name]
# remove container
docker ps -a
# it is gone

docker images
# show all the images

docker rmi [name]
# remove image

docker images
# image is gone

docker pull busybox
# pull if you don't have the latest

docker run busybox sleep 1000
docker ps
docker exec [name] cat /etc/hosts
# we get the content

docker stop [name]
docker exec [name] cat /etc/hosts
# no running container

docker run busybox sh -c “while true; do $(echo date); sleep 1; done”
# run something that will make some logging

docker logs [name] 
# display the logging

docker logs -f [name]
# follow logging

docker run httpd:alpine
# start container
# it doesn't work :-(

docker ps
docker inspect [name]
# port 80 not mapped

docker run -p 8081:80 httpd:alpine

curl http://localhost:8081
# something is running



