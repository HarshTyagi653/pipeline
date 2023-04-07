FROM centos:latest
MAINTAINER htyagi2233@gmail.commands
RUN yum update -y
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page287/newlife.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip Newlife.zip
RUN cp -rvf html/* .
RUN rm -rf newlife.zip
CMD ["/usr/sbin/https", "-D", "FOREGROUND"]
EXPOSE 80
