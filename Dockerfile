FROM php:8.1-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy build context (may be empty on Orkestr)
COPY . /var/www/html/

# At runtime, copy the platform-cloned repo from /root into /var/www/html
RUN mkdir -p /var/www/html && \
    cp -r /root/* /var/www/html/ 2>/dev/null || true

# Fix permissions
RUN chmod -R 755 /var/www/html && \
    mkdir -p /var/www/html/data/levels && \
    chmod -R 777 /var/www/html/data

EXPOSE 80
