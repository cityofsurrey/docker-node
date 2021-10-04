FROM node:16.10.0

ENV NPM_CONFIG_LOGLEVEL error

# Install dev dependencies
RUN apt-get update && apt-get install build-essential curl -y

# Fix Debian vulnerabilities
RUN DEBIAN_FRONTEND=noninteractive && \
  DEBIAN_PRIORITY=critical && \
  apt-get -q -y -o "Dpkg::Options::=--force-confold" dist-upgrade

RUN yarn config set ignore-engines true
