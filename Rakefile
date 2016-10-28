namespace :db do

  task :environment do
    require_relative './config/environment.rb'
  end

  desc 'migrate changes to your database'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'seed the database with some dummy data'
  task :seed do
    require_relative './db/seeds.rb'
  end

end

namespace :greeting do

  desc 'output hello to the terminal'
  task :hello do
    puts 'hello from Rake!'
  end

  desc 'outpur hola to the terminal'
  task :hola do
    puts 'hola de Rake!'
  end

end
