FROM docker.io/ubuntu:20.04

RUN apt update -y && apt install -y python3-pip
RUN python3 -m pip install django

COPY app/ /app

WORKDIR /app
ENV MODE=Debug

ENTRYPOINT ["/bin/bash"]
CMD ["-c", "ls -la"]

EXPOSE 8000