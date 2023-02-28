#/app /usr /lib
FROM node:19.2-alpine3.16

# cd app
WORKDIR /app

#Dest /app
COPY package.json ./

# instalar las dependencias del package (node)
RUN npm install

#Dest /app
COPY app.js ./

CMD [ "node", "app.js" ]
