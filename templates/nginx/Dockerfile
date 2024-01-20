#
FROM nginx:1.25.2-alpine

RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html

COPY conf /etc/nginx
# Copiamos el script de entrada
#COPY docker-entrypoint.sh /docker-entrypoint.sh
# Establecemos permisos de ejecución
#RUN chmod +x /docker-entrypoint.sh
#
#CMD ["/bin/bash"]
# Comando de entrada
#CMD ["/docker-entrypoint.sh"]