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
  desc 'require environment'
  task :environment do
    require_relative './config/environment'
  end

  desc 'migrate changes to your environment'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'open up pry'
  task :console => :environment do
    Pry.start
  end

  desc 'fill in table with dummy seeds'
  task :seed do
    require_relative './db/seeds.rb'
  end
end
