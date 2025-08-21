# Usar la imagen base de Nginx, que es un servidor web ligero
FROM nginx:alpine

# Copiar los archivos de la web (todo el contenido de este repositorio)
COPY . /usr/share/nginx/html

# Borrar la configuración por defecto de Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copiar nuestra configuración personalizada para que funcione React Router
COPY nginx.conf /etc/nginx/conf.d

# Exponer el puerto 80 y arrancar Nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]