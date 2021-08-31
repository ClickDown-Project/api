# syntax=docker/dockerfile:1
FROM node:14.16-alpine

WORKDIR /api

COPY . /api

RUN cd /api \ && yarn install

CMD ["yarn", "start:dev"]
