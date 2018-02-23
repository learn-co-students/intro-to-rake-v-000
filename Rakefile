namespace :greeting do
  desc 'outputs hola to the temrinal'
  task :hola do
    puts "hola de Rake!"
  end

  desc 'outputs hello to the terminal'
  task :hello do
    puts "hello from Rake!"
  end
end 

desc 'grants rake access to environment'
task :environment do
  require_relative './config/environment.rb'
end

desc 'drop into the Pry console'
task :console => :environment do
  Pry.start
end

namespace :db do
  desc 'migrate changes to your database'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'seed the database with some dummy data'
  task :seed do
    require_relative './db/seeds.rb'
  end
end
