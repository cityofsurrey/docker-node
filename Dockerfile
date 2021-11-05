FROM node:17.0.1-alpine

ENV NPM_CONFIG_LOGLEVEL error

# Install development packages
RUN apk add --no-cache --update bash curl git openssh tzdata
RUN apk update && apk upgrade && rm -rf /var/cache/apk/*

RUN yarn config set ignore-engines true
