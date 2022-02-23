namespace :docker do
  desc 'Build docker images'
  task :build do
    system "docker-compose build"
  end

  desc 'up docker container'
  task :up do
    system "docker-compose up -d"
  end

  desc 'output logs'
  task :logs do
    system "docker-compose logs web"
  end

  desc 'down docker container'
  task :down do
    system "docker-compose down"
  end

  desc 'run yarn install'
  task :yarn do
    system "docker-compose run web yarn install --check-files"
  end
end

namespace :rails do
  desc 'run rails test'
  task :test do
    system "docker-compose exec web rails test"
  end

  namespace :db do
    desc 'create database'
    task :create do
      system "docker-compose run web rails db:create"
    end
    
    desc 'run database migration'
    task :migrate do
      system "docker-compose run web rails db:migrate"
    end
  end
end

