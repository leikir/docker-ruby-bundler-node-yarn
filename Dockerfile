FROM leikir/ruby-node:ruby-3.0.0-node-15.11.0-slim

MAINTAINER Leikir Web <web@leikir.io>

RUN ln -sf /usr/local/bin/node /usr/local/bin/nodejs \
  && ln -sf ../lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm \
  && ln -sf ../lib/node_modules/npm/bin/npx-cli.js /usr/local/bin/npx \
  && ln -sf /opt/yarn*/bin/yarn /usr/local/bin/yarn \
  && ln -sf /opt/yarn*/bin/yarnpkg /usr/local/bin/yarnpkg

RUN gem install bundler --no-document
