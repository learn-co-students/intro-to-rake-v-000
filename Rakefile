namespace :greeting do

  desc 'outputs hello to the terminal'
  task :hello do
    puts "hello from Rake!"
  end

  desc 'outputs hello in spanish'
  task :hola do
    puts 'hola de Rake!'
  end
end

desc 'loads the environment'
task :environment do
  require_relative './config/environment'
end


namespace :db do
  desc 'Creates a students table'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'Loads dummy data into table'
  task :seed do
    require_relative './db/seeds.rb'
  end
end

task :console => :environment do
  Pry.start
end
