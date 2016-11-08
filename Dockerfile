FROM mhart/alpine-node:7.0.0

# Install packages
RUN apk add --no-cache --update \
    bash curl git && \
    rm -rf /var/cache/apk/*

# Install Yarn
RUN mkdir -p /opt
ADD yarn-v0.16.1.tar.gz /opt/
RUN mv /opt/dist /opt/yarn
ENV PATH "$PATH:/opt/yarn/bin"
