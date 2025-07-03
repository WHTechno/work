FROM php:8.2-apache

# Aktifkan mod_rewrite agar .htaccess bisa digunakan
RUN a2enmod rewrite

# Salin semua isi repo ke direktori Apache
COPY . /var/www/html/

# Berikan permission ke folder data (agar bisa tulis file JSON)
RUN chmod -R 777 /var/www/html/application/data

# Set working directory
WORKDIR /var/www/html
