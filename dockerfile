# Imagen base con Node.js
FROM node:latest

# Copiar los archivos del proyecto al contenedor
COPY . /var/www/frontend

# Establecer el directorio de trabajo
WORKDIR /var/www/frontend

# Instalar las dependencias de Node.js
RUN npm install

# Compilar la aplicación de React
RUN npm run build

# Exponer el puerto 3000
EXPOSE 3000

# Comando para iniciar la aplicación de React
CMD ["npm", "start"]
