FROM debian:buster


RUN apt-get -y update && \
    apt install redis-server -y && \
    echo "maxmemory 256mb" >> /etc/redis/redis.conf && \
    echo "maxmemory-policy allkeys-lru" >> /etc/redis/redis.conf && \
    sed -i 's/bind 127.0.0.1/bind redis/' /etc/redis/redis.conf


EXPOSE 6379

CMD ["redis-server",  "--protected-mode", "no"]