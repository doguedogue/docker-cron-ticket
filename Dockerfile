#/app /usr /lib
FROM node:19.2-alpine3.16

# cd app
WORKDIR /app

#Dest /app
COPY package.json ./

# instalar las dependencias del package (node)
RUN npm install

#Copia todo
COPY . .

# Realizar testing
RUN npm run test

# Eliminar archivos y directorios no necesarios
RUN rm -rf test && rm -rf node_modules

# Unicamente las dependencias de prod
RUN npm install --prod

# Comando run de la imagen
CMD [ "node", "app.js" ]
