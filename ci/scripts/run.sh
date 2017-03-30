blue="\033[1;34m"
red="\033[1;31m"
none="\033[1;0m\n"

printf "$blue[+] Stopping old container$none"
docker stop prod > /dev/null 2>&1
docker rm prod > /dev/null 2>&1
printf "$blue[+] Done$none"

printf "$blue[+] Running docker image$none"

docker run --name prod -p 8080:8080 -d injectyy/counter:latest
if [ $? -eq 0  ]
then
    printf "$blue[+]Done$none"
else
    printf "$red[!] Deploy failed$none"
    exit 1
fi
