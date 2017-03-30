blue="\033[1;34m"
red="\033[1;31m"
none="\033[1;0m\n"

printf "$blue[+] Downloading new image$none"
docker pull injectyy/counter:latest
printf "$blue[+] Done$none"

printf "$blue[+] Stopping old container$none"
docker stop project_prod_1 > /dev/null 2>&1
docker rename project_prod_1 prod_last> /dev/null 2>&1
docker rm project_prod_1 > /dev/null 2>&1
printf "$blue[+] Done$none"

printf "$blue[+] Running docker image$none"

cd /tmp/builds/
docker-compose up
if [ $? -eq 0  ]
then
    printf "$blue[+]Done$none"
else
    printf "$red[!] Deploy failed$none"
    exit 1
fi
