# 기본 이미지 설정
FROM php:8.2-apache

# 필요한 PHP 확장 설치
RUN docker-php-ext-install pdo_mysql

# Composer 설치
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Apache에서 mod_rewrite 활성화
RUN a2enmod rewrite

# Set DocumentRoot to Laravel public directory
RUN sed -i 's!/var/www/html!/var/www/html/public!g' /etc/apache2/sites-available/000-default.conf

# 애플리케이션 소스 복사
COPY . /var/www/html

# 프로젝트 소유권 설정
RUN chown -R www-data:www-data /var/www/html

# 작업 디렉토리 설정
WORKDIR /var/www/html

# 라라벨 의존성 설치
RUN composer install

# 스토리지 폴더의 심볼릭 링크를 생성
RUN php artisan storage:link

# 포트 열기
EXPOSE 80
