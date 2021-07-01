FROM node:14-alpine3.11 as base
WORKDIR /app
COPY ./package*.json ./
RUN npm i
COPY . /app 
EXPOSE 3000
CMD ["node","index.js"]
