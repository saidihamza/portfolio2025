# Utilise une image officielle Apache + PHP
FROM php:8.2-apache

# Copie le code dans le dossier public d'Apache
COPY . /var/www/html/

# Donne les bons droits
RUN chown -R www-data:www-data /var/www/html

# Active mod_rewrite si besoin (ex: Laravel, etc.)
RUN a2enmod rewrite

# Expose le port 80
EXPOSE 80
