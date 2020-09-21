build-full: build yarn db-create db-migrate
build:
	docker-compose build
up:
	docker-compose up
down:
	docker-compose down
yarn:
	docker-compose run web yarn install --check-files
test:
	docker-compose run web rails test
db-create:
	docker-compose run web rails db:create
db-migrate:
	docker-compose run web rails db:migrate
