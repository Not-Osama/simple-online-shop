# Use the official PHP image with Apache
FROM php:8.1-apache

# Install necessary extensions, like mysqli for database connections
RUN docker-php-ext-install mysqli

# Copy the PHP application to the /var/www/html directory in the container
COPY ./app /var/www/html

# Set permissions for the Apache user
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80