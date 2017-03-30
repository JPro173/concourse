FROM python:3.4-alpine

ADD requirements.txt /code/
RUN pip install -r /code/requirements.txt

ADD . /code
WORKDIR /code
EXPOSE 80
CMD ["/bin/sh", "/code/run.sh"]
