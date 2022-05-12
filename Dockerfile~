FROM docker.io/ubuntu:20.04

RUN apt update -y && DEBIAN_FRONTEND=noninteractive apt install -y python3-pip tzdata postgresql-client
RUN python3 -m pip install django psycopg2-binary

COPY app/mysite/ /app
RUN mkdir /db

WORKDIR /app

ENV DJANGO_ADMIN_EMAIL="butler273@hotmail.com"
ENV DJANGO_ADMIN_USERNAME="admin"
ENV DJANGO_ADMIN_PASSWORD="Password1"

ENV DB_ENGINE 'sqlite'
ENV DB_NAME 'mysite'
ENV DB_PASSWORD 'django'
ENV DB_HOST 'postgres'

ENTRYPOINT ["bash"]
CMD ["-c", "./entrypoint.sh"]

EXPOSE 8000