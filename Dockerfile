FROM node:22-alpine

COPY package.json /app/package.json

WORKDIR /app

RUN npm install && rm -rf iob*

WORKDIR /app/node_modules

ENTRYPOINT [ "/usr/local/bin/node", "iobroker.loxone" ]