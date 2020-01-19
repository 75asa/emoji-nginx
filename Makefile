buildup:
	docker-compose up -d --build
up:
	docker-compose up -d
downv:
	docker-compose down -v
down:
	docker-compose down
laravel:
	docker-compose run composer global require laravel/installer
	docker-compose run composer create-project --prefer-dist "laravel/laravel=6.0" .
	docker-compose run composer require jenssegers/mongodb --ignore-platform-reqs
	docker-compose restart
php-ash:
	docker-compose exec php-fpm /bin/ash
composer:
	docker-compose run composer $(arg)
artisan:
	docker-compose exec php-fpm php artisan $(arg)
php:
	docker-compose exec php-fpm php $(arg)
ps:
	docker-compose ps
restart:
	docker-compose restart
logs-php-fpm:
	docker-compose logs php-fpm
logs-nginx:
	docker-compose logs nginx
logs-mongo:
	docker-compose logs mongo
logs-mongo-x:
	docker-compose logs mongo-express


