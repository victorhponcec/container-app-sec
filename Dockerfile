FROM php:8.2-fpm
RUN apt-get update && apt-get install -y nginx && apt-get clean
COPY app/ /var/www/html/
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
# Start PHP-FPM and Nginx in foreground
CMD ["sh", "-c", "php-fpm & nginx -g 'daemon off;'"]
