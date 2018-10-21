# Getting Started
Run this command to install packages
```
docker run --rm -v $(pwd):/app composer bash -c "composer install && composer run-script post-root-package-install && composer run-script post-create-project-cmd"
```

Run this command to start the application
```
docker-compose up
```

Run this command to fix permission
```
docker-compose exec app bash -c "chmod +x fix-permission.sh && ./fix-permission.sh"
```

Run this command to run migration
```
docker-compose exec app php artisan migrate
```