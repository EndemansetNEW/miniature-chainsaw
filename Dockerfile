FROM php:8.1-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY . /var/www/html/

EXPOSE 80

RUN sed -i 's|/var/www/html|/root|g' /etc/apache2/sites-available/000-default.conf

RUN sed -i 's|/var/www/html|/root|g' /etc/apache2/apache2.conf
