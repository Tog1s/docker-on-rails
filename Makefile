build-full: build yarn db-create db-migrate
build:
	docker-compose build
up:
	docker-compose up -d
down:
	docker-compose down
yarn:
	docker-compose run web yarn install --check-files
test:
	docker-compose exec web rails test
db-create:
	docker-compose exec web rails db:create
db-migrate:
	docker-compose exec web rails db:migrate
dce:
	@docker-compose exec web $(filter-out $@,$(MAKECMDGOALS))
