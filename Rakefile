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

task :environment do
  require_relative './config/environment'
end
#run rake environment in order to give migrate
#task below access to environment


namespace :db do
  desc 'migrate changes to your database'
  task :migrate => :environment do
    Student.create_table
  end
  #create table by running 'rake db:migrate'

  desc 'seed the database with some dummy data'
  task :seed do
    require_relative './db/seeds.rb'
  end
  #Populate table with data from seeds.rb file
  # run 'rake db:seed'
end

desc 'drop into the Pry console'
task :console => :environment do
  Pry.start
end
  #drop into pry by running 'rake console'
