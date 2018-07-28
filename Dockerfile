FROM php:7.2-fpm-alpine

MAINTAINER Warrick Hill <warrick.hill@hikingduck.co.uk>

RUN set -xe \
  && NPROC=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) \
  && docker-php-ext-install -j${NPROC} pdo_mysql
