FROM task1

WORKDIR /usr/share/nginx/html

COPY . .

RUN sed -i 's|<html><body><h1>"it is task1"</h1></body></html>|<html><body><h1>"task modified"</h1></body></html>|' index.html

RUN apt update

EXPOSE 8090

