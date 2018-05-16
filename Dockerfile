FROM nginx:alpine

COPY ./config/nginx.conf /etc/nginx/nginx.conf
COPY ./config/host.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
