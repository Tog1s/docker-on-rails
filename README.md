# Docker on Rails

Minimal Docker compose configuration for development on rails 6.

## Usage

- Add Rails Application to railsapp dir.
- Add database config.
  ```yaml
    default: &default
      adapter: postgresql
      encoding: unicode
      host: db
      username: postgres
      password: password
      pool: 5

    development:
      <<: *default
      database: app_development
    
    test:
      <<: *default
      database: app_test
  ```
- Run build.
  ```bash
    rake docker:build
  ```
  ```bash
    make build
  ```
- Run yarn install.
  ```bash
    rake docker:yarn
  ```
  ```bash
    make yarn
  ```
- Run docker up to start containers.
  ```bash
    rake docker:up
  ```
  ```bash
    make up
  ```
- Run docker down to stop containers.
  ```bash
    rake docker:down
  ```
  ```bash
    make down
  ```
- For create database and migration.
  ```bash
    rake docker:db:create
    rake docker:db:migrate
  ```
  ```bash
    make db-create
    make db-migrate
  ```
- For run any rails command use dce (docker-compose exec web).
  ```bash
    make dce rails test
  ```
