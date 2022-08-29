FROM php:8.0-apache
COPY sites/ /var/www/html
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN docker-php-ext-install pdo pdo_mysql
EXPOSE 80
RUN apt-get update && apt-get -y install nano