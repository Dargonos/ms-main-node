FROM node:9.2.0-alpine

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/
COPY package.json .
RUN npm install
COPY . /usr/src/app/

EXPOSE 8081

ENTRYPOINT [ "npm", "run", "development" ]