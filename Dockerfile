FROM php:8.4-cli

RUN apt-get update && apt-get install -y \
    git unzip libicu-dev \
    && docker-php-ext-install pdo pdo_mysql intl

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /app