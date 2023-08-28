FROM debian:buster


RUN apt-get -y update && \
    apt install redis-server -y

COPY ./conf/redis.conf  /etc/redis/redis.conf

EXPOSE 6379

CMD ["redis-server",  "--protected-mode", "no"]