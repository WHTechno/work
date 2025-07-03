FROM php:8.0-apache

# Aktifkan mod_rewrite
RUN a2enmod rewrite

# Salin semua file ke dalam container
COPY . /var/www/html/

# Berikan izin tulis pada folder data
RUN chmod -R 777 /var/www/html/application/data

# Set working directory
WORKDIR /var/www/html
