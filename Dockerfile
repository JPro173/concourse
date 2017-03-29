FROM python:3.4-alpine
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
EXPOSE 80
CMD ["/bin/sh", "/code/run.sh"]
