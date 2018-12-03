#   Definimos la version de node para la imagen
FROM node:8 

#   Defino la carpeta de trabajo
WORKDIR /usr/src/app

#   Copio el fichero de paquetes
COPY package.json ./

RUN npm install

#   Copy de todos los fichero
COPY . .

#   Abrimos el puerto hacia el exterior
EXPOSE 8080

#   Definimos el comando y los parametros a ejecutar
CMD [ "npm", "start" ]
