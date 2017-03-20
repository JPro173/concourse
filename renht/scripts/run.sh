cd $1
tar -xf html.tar.gz
cd html

kill $(lsof -t -i:8080)

python3 -m http.server 8080
