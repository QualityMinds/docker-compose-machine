FROM docker:stable
LABEL maintainer="tobias.varlemann@qualityminds.de"

RUN apk add --update nodejs nodejs-npm curl

RUN npm install -g machine-share

RUN curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` > /usr/local/bin/docker-machine 
RUN chmod +x /usr/local/bin/docker-machine

RUN curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose 
RUN chmod +x /usr/local/bin/docker-compose

