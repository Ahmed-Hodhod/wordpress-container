# Use the official WordPress image from the Docker Hub
FROM wordpress:latest

# Copy your own WordPress files to the container
COPY . /var/www/html

# Set environment variables
ENV WORDPRESS_DB_HOST=db:3306
ENV WORDPRESS_DB_USER=wordpress
ENV WORDPRESS_DB_PASSWORD=wordpress
ENV WORDPRESS_DB_NAME=wordpress

# Expose port 80
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
