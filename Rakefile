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

desc 'makes environment file available'
task :environment do
  require_relative './config/environment'
end

desc 'drop into Pry console'
task :console => :environment do
  Pry.start
end

namespace :db do
  desc 'migrate changes to database'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'seeds database with fake data'
  task :seed do
    require_relative './db/seeds.rb'
  end
end
