FROM nginx:1.21.1

COPY ./CDM/docs /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

USER root

RUN chown -R nginx:nginx /var/cache/nginx /var/run /var/log/nginx && \
    chmod -R 755 /var/cache/nginx /var/run /var/log/nginx /usr/share/nginx/html

USER nginx

CMD ["nginx", "-g", "daemon off;"]