blue="\033[1;34m"
red="\033[1;31m"
none="\033[1;0m\n"

printf "$blue[+] Running docker image$none"
docker run -p 8080:8080 -d injectyy/counter:latest
if [ $? -eq 0  ]
then
    printf "$blue[+]Done$none"
else
    printf "$red[!] Deploy failed$none"
    exit 1
fi
