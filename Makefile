build-up:
	docker-compose up -d --build
up:
	docker-compose up -d
down-v:
	docker-compose down -v
down:
	docker-compose down
laravel:
	mkdir ./laravel
	docker-compose exec app composer create-project --prefer-dist "laravel/laravel=6.0" laravel
	docker-compose exec app composer require jenssegers/mongodb
laravel-bash:
	docker-compose exec app bash
ps:
	docker-compose ps
restart:
	docker-compose restart
logs-app:
	docker-compose logs app
logs-mongo:
	docker-compose logs mongo
logs-mongo-x:
	docker-compose logs mongo-express

