FROM node:9.2.0-alpine

ENV NPM_CONFIG_LOGLEVEL error

# Install development packages
RUN apk add --no-cache --update bash curl git openssh tzdata && \
    rm -rf /var/cache/apk/*
