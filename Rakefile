namespace :greeting do
  desc 'prints hello to the terminal'
  task :hello do
    puts 'hello from Rake!'
  end

  desc 'prints hola to the terminal'
  task :hola do
    puts 'hola de Rake!'
  end
end

namespace :db do

  desc 'drop into the Pry console'
  task :console => :environment do
    Pry.start
  end

  desc 'require config/environment'
  task :environment do
    require_relative './config/environment'
  end

  desc 'migrate changes to your database'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'seed database with some dummy data'
  task :seed do
    require_relative './db/seeds.rb'
  end



end
