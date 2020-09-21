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
  ```
- Run build
  ```bash
    rake docker:build
  ```
- Run yarn install
  ```bash
    rake docker:yarn
  ```
- Run docker up to start application
  ```bash
    rake docker:up
  ```
- For create database and migration
  ```bash
    rake docker:db:create
    rake docker:db:migrate
  ```
