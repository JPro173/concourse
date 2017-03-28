mkdir -p artifact

cd project

tar -zcvf html.tar.gz html

cd ..

mv project/html.tar.gz artifact/
