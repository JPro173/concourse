FROM python:3.6

ADD . .

RUN tar -xf html.tar.gz

WORKDIR html

EXPOSE 8080

CMD ["bash", "../run.sh"]
