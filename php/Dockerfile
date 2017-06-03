FROM php:5.6-apache
COPY php.ini /usr/local/etc/php/
RUN apt-get update \
  && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng12-dev libmcrypt-dev \
  && docker-php-ext-install pdo_mysql mysqli mbstring gd iconv mcrypt
RUN apt-get install -y vim
RUN apt-get install -y git 
RUN cd /var/www/html && git clone -b 2.x git://github.com/cakephp/cakephp.git
RUN cd /var/www/html/cakephp/app && chown -R www-data tmp
COPY database.php /var/www/html/cakephp/app/Config/
COPY core.php /var/www/html/cakephp/app/Config/
COPY ./apache2/sites-available/000-default.conf /etc/apache2/sites-available/
COPY ./apache2/apache2.conf /etc/apache2/
