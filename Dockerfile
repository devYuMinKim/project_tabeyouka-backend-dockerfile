FROM php:7.4-fpm-alpine

# 기본 확장 기능 설치
RUN docker-php-ext-install pdo_mysql

# Composer 설치
COPY --from=composer /usr/bin/composer /usr/bin/composer

# 작업 디렉토리 설정
WORKDIR /var/www/html

# 소스 복사
COPY ../project_Team-5/team-5-backend /var/www/html

# 의존성 설치
RUN composer install

# 권한 설정
RUN chown -R www-data:www-data /var/www/html/storage && chmod -R 775 /var/www/html/storage
