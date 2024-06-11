FROM ubuntu:latest

MAINTAINER sanjay.dahiya332@gmail.com

RUN apt-get update && apt-get install -y nginx \
    zip \
    unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip oxer.zip
RUN cp -rf oxer-html/* . 
RUN rm -rf oxer.zip

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80




#FROM nginx:latest
#RUN apt install install -y  zip
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip /var/www/html/
#WORKDIR /var/www/html
#RUN unzip oxer.zip
#RUN cp -rf oxer-html/* . 
#RUN rm -rf oxer.zip
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#EXPOSE 80
