FROM centos:stream8

MAINTAINER sanjay.dahiya332@gmail.com

RUN yum install -y httpd \
    zip \
    unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip /var/www/html/

WORKDIR /var/www/html

RUN unzip kindle.zip

RUN cp -rfv markups-kindle/* . \
    && rm -rf __MACOSX markups-kindle kindle.zip

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

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
