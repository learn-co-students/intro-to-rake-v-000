namespace :greeting do
  desc 'outputs hello to the terminal'
  task :hello do
    puts "Hello from Rake!"
  end

  desc 'outputs hola to the terminal'
  task :hola do
    puts "¡Hola desde Rake!"
  end
end

task :environment do
  require_relative './config/environment'
end

namespace :db do
  desc 'migrate changes to your database'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'seed the database with fake data'
  task :seed do
    require_relative './db/seeds.rb'
  end
end

desc 'open the Pry console'
task :console => :environment do
  Pry.start
end
