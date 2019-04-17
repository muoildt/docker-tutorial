#
# Each instruction in this file generates a new layer that gets pushed to your local image cache
#
 
#
# Lines preceeded by # are regarded as comments and ignored
#
 
#
# The line below states we will base our new image on the Latest Official Ubuntu 
FROM ubuntu:latest
 
#
# Identify the maintainer of an image
LABEL maintainer="thang@muoi.com"
 
#
# Update the image to the latest packages
RUN apt-get update && apt-get upgrade -y
 
#
# Install NGINX,PHP to test
RUN apt-get install nginx -y && \
	apt-get install -y \
	php-fpm php-mysql

VOLUME [ "/var/www/html" ]
WORKDIR /var/www/html
EXPOSE 9000
CMD ["php7-fpm.0"]