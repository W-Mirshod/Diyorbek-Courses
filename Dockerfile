FROM nginx:alpine
COPY home.html /usr/share/nginx/html/index.html
EXPOSE 80
