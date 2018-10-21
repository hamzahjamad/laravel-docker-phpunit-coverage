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

# Test
Run test coverage
```
docker-compose exec app bash -c "./vendor/bin/phpunit --coverage-html ./tests/coverage_results"
```

The coverage report can be found in /tests/coverage_results folder. 

This is the index page.
![alt text](storage/coverage_test_result_samples/index.png?raw=true "alt text")

This is the dashboard page.
![alt text](storage/coverage_test_result_samples/dashboard.png?raw=true "alt text")

This is one of the file page.
![alt text](storage/coverage_test_result_samples/file.png?raw=true "alt text") 


## Reference
* [Laravel + Docker Part 1 — setup for Development](https://medium.com/@shakyShane/laravel-docker-part-1-setup-for-development-e3daaefaf3c)