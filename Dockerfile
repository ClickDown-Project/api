# syntax=docker/dockerfile:1
FROM node:14.16

WORKDIR /api

COPY ["package.json", "yarn.lock", "./api/"]

COPY . /api

RUN cd /api \ && yarn install

CMD ["yarn", "start:dev"]
