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
  desc 'migrates to db'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'seed the db'
  task :seed do
    require_relative './db/seeds.rb'
  end

  desc 'environment task'
  task :environment do
    require_relative './config/environment.rb'
  end
end
