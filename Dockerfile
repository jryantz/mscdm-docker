FROM nginxinc/nginx-unprivileged:1.21-alpine
COPY ./CDM/docs /usr/share/nginx/html