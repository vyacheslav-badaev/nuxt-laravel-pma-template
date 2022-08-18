up:
	docker-compose up -d

build:
	docker-compose up -d --build

down:
	docker-compose down

restart:
	docker-compose down
	docker-compose up -d --build

init:
	cp .env.example .env
	docker-compose up -d --build
	docker-compose exec front touch .env
	docker-compose exec app composer install
	docker-compose exec app cp .env.example .env
	docker-compose exec app php artisan key:generate
	docker-compose exec app php artisan migrate
	docker-compose down
dev:
	docker-compose up