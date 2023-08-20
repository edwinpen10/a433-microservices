#melakukan build image
docker build -t mredw/order-service:latest .
#melihat image list
docker image ls
#login docker hub
echo $ACCESS_TOKEN | docker login -u mredw --password-stdin
#push ke docker hub
docker push mredw/order-service:latest