FROM ubuntu:22.04
MAINTAINER "sudhams <sudhams@gmail.com>"
RUN apt update && apt install -y nginx curl
EXPOSE 80
COPY index.html /usr/share/nginx/html
COPY index.html /var/www/html
CMD ["nginx", "-g", "daemon off;"]
