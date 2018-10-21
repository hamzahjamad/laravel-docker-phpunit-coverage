FROM composer as builder
WORKDIR /app
RUN composer install && \
    composer run-script post-root-package-install && \
    composer run-script post-create-project-cmd 