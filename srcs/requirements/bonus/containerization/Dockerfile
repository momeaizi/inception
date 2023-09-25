FROM debian:buster

RUN apt-get update && \
    apt-get install -y python3

COPY ./tools/containerization-logo.png /website/containerization-logo.png

COPY ./tools/index.html /website/index.html

CMD ["python3", "-m", "http.server", "3000", "--bind", "0.0.0.0", "-d", "/website/"]

