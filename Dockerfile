FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y coturn && \
    apt-get clean

COPY turnserver.conf /etc/turnserver.conf

EXPOSE 3478

CMD ["turnserver", "-c", "/etc/turnserver.conf", "--no-cli"]
