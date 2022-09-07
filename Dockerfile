FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y

RUN apt-get install nginx curl -y; echo "mukhammadmain 2022" >> /var/www/html/index.html

EXPOSE 80 443 22

CMD ["nginx", "-g", "daemon off;"]
