docker build /tmp/builds/
docker stop prod
docker rm prod
docker run -name prod -dit -p 8080 $(docker images --format "{{.ID}}" | head -n 1)
