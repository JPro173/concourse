#!/bin/sh
mkdir -p artifact

cd project

tar -zcvf project.tar.gz app.py test.sh

cd ..

mv project/project.tar.gz artifact/
