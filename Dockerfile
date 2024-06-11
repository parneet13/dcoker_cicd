FROM ubuntu:14.04
RUN apt-get update -y && apt-get install -y apache2 \
 zip \
 unzip \
 curl
WORKDIR /var/www/html
#RUN curl -o canvas.zip https://www.free-css.com/assets/files/free-css-templates/download/page273/canvas.zip
RUN curl https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip
#RUN unzip canvas.zip
RUN unzip kindle.zip
#RUN cp -rvf canvas/* .
#RUN rm -rf canvas.zip
RUN cp -rfv markups-kindle/* . \
    && rm -rf __MACOSX markups-kindle kindle.zip
CMD ["apache2ctl","-D","FOREGROUND"]
EXPOSE 80
