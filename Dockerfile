FROM python:3.7-alpine

ENV UID 1000
ENV GID 1000

WORKDIR "/tmp"

RUN pip3 install bandcamp-downloader

VOLUME ["/tmp"]

USER $UID:$GID

ENTRYPOINT ["bandcamp-dl", "--base-dir=/tmp"]