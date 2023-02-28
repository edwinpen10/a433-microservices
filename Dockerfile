# mengambil image node versi 14.21-alpine dari repository
FROM node:14.21-alpine
# menentukan direktori 
WORKDIR /app
# melakukan copy dari local ke conteiner
COPY . .
# inisialisasi enviroment
ENV NODE_ENV=production DB_HOST=item-db
# instal depedency dan build
RUN npm install --production --unsafe-perm && npm run build
# melakuan expose port ke 8080
EXPOSE 8080
# running app 
CMD [ "npm", "start" ]