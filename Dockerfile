FROM nginx:stable-alpine

RUN rm -rf /etc/nginx/conf.d
COPY conf /etc/nginx

COPY index.html ./usr/share/nginx/html
COPY assets/ ./usr/share/nginx/html/assets


EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]