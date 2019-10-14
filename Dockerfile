FROM node:12.11.1

ENV NPM_CONFIG_LOGLEVEL error

# Install development packages
RUN apk add --no-cache --update bash curl git openssh tzdata
RUN apk update && apk upgrade && rm -rf /var/cache/apk/*

RUN yarn config set ignore-engines true
