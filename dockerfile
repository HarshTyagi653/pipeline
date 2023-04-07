FROM ubuntu:latest
MAINTAINER harsh.tyagi
RUN apt-get -y update
RUN apt install -y apache2 \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page287/newlife.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip newlife.zip
RUN cp -rvf html/* .
RUN rm -rf newlife.zip
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
EXPOSE 80
