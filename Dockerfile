FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm i
COPY ./*.js ./
EXPOSE 3000
CMD [ "node", "index.js" ]