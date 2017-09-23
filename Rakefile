namespace :greeting do
desc 'outputs hello to the terminal'
  task :hello do
    puts "hello from Rake!"
  end

desc 'outputs hola to the terminal'
  task :hola do
    puts "hola de Rake!"
  end
end

namespace :db do
desc 'requires config/environment'
  task :environment do
    require_relative './config/environment'
  end

desc 'migrate changes to your databse'
  task migrate: :environment do
    Student.create_table
  end

desc 'seeds the database with dummy data'
  task :seed do
    require_relative './db/seeds.rb'
  end
end
