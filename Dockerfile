FROM python:3.13.6-alpine3.21

LABEL maintainer="aav162807@gmail.com"

WORKDIR app/

COPY requirements.txt requirments.txt
RUN pip install -r requirments.txt

COPY . .

RUN mkdir -p /files/media

RUN adduser -D -H my_user

RUN chown -R my_user /files/media
RUN chmod -R 755 /files/media

USER my_user
