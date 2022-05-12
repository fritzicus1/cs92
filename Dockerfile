FROM docker.io/ubuntu:20.04

RUN apt update -y && DEBIAN_FRONTEND=noninteractive apt install -y python3-pip tzdata postgresql-client

RUN alias python=python3
RUN python3 -m pip install django psycopg2-binary

COPY app/ /app

WORKDIR /app

RUN mkdir /db
VOLUME /db
ENV DB_ENGINE = "sqlite"

ENV DB_NAME = "mysite"
ENV DB_USER = "sa"
ENV DB_PASSWORD = "password1"
ENV DB_HOST = "postgres"

ENTRYPOINT ["/bin/bash"]
CMD ["-c", "./entrypoint.sh"]

EXPOSE 8000