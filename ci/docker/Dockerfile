FROM python:3.6

ADD . .

RUN tar -xf project.tar.gz

WORKDIR project

EXPOSE 8080

CMD ["bash", "../start.sh"]
