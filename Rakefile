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
  desc 'migrating changes to your database'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'creating evironment.db dependency'
  task :environment do
    require_relative './config/environment'
  end

  desc 'seed the database with some dummy data'
  task :seed do
    require_relative './db/seeds.rb'
  end
end

desc 'drop into pry console'
task :console => :environment do
  Pry.start
end
