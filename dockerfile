  
FROM centos:latest
MAINTAINER sanjay.dahiya332@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/insertion.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip piuma.zip
RUN cp -rvf Piuma/*
RUM rm -rf Piuma piuma.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
