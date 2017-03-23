docker build /tmp/builds/
docker stop prod
docker run -name prod -dit -p 8080 $(docker ps -l -q)
