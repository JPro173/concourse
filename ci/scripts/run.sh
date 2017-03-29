printf "\033[1;34m[+] Building docker image\033[0m\n"
docker build /tmp/builds/
docker stop prod > /dev/null 2>&1
docker rm prod > /dev/null 2>&1
printf "\033[1;34m[+] Running docker container\033[0m\n"
docker run --name prod -dit -p 8080:8080 $(docker images --format "{{.ID}}" | head -n 1) > /dev/null 2>&1
