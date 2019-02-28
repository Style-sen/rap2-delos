FROM node:8.15.0-alpine

WORKDIR /app
ADD . /tmp
RUN /bin/sh -c 'cd /tmp && npm install && npm install -g typescript && npm run build && mv ./dist/* /app/ && mv ./node_modules /app/ && rm -rf /tmp'
