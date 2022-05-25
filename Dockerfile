FROM python:3.8-alpine
MAINTAINER lAWAL AFEEZ O.

ENV PYTHONUNBUFFERRED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir app
WORKDIR app
COPY ./app /app

RUN adduser -D user
USER user