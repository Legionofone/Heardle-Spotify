FROM node:18-alpine

WORKDIR /app

COPY ./node_modules .
COPY ./package.json .
COPY ./package-lock.json .
COPY ./public .

RUN npm install
RUN npm install -g nodemon

EXPOSE 8888

ENTRYPOINT ["nodemon", "server.js"]  
