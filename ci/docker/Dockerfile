FROM python:3.6

WORKDIR project

ADD . .

RUN tar -xf project.tar.gz

EXPOSE 8080

CMD ["bash", "../start.sh"]
