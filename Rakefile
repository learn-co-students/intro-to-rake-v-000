namespace :greeting do
  desc 'outs hola to the terminal'
  task :hola do
    puts "Hola de Rake!"
  end

  desc 'outputs hello to the terminal'
  task :hello do
    puts "hello from Rake!"
  end
end

namespace :db do
  desc 'migrate change to your database'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'does stuff'
  task :environment do
    require_relative './config/environment'
  end

  desc 'seed the database with some dummy data'
  task :seed do
    require_relative './db/seeds.rb'
  end

  desc 'drop into the pry console'
  task :console => :environment do
    Pry.start
  end
end
