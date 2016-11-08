FROM mhart/alpine-node:7.0.0

ENV NPM_CONFIG_LOGLEVEL info

# Install packages
RUN apk add --no-cache --update \
    bash curl git openssh && \
    rm -rf /var/cache/apk/*

# Install Yarn
RUN mkdir -p /opt
ADD yarn-v0.16.1.tar.gz /opt/
RUN mv /opt/dist /opt/yarn
ENV PATH "$PATH:/opt/yarn/bin"
