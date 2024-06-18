# Use the official WordPress image from the Docker Hub
FROM wordpress:latest

# Copy your own WordPress files to the container
COPY . /var/www/html


# Expose port 80
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
