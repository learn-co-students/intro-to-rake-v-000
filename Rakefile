namespace :greeting do

  desc 'outputs hello to the terminal'
  task :hello do
    puts 'hello from Rake!'
  end

  desc 'outputs hola to the terminal'
  task :hola do
    puts 'hola de Rake!'
  end
  
end 

  desc 'drop into the Pry console'
  task :console => :environment do
    Pry.start 
  end

namespace :db do
  
  desc 'access files'
  task :environment do
    require_relative './config/environment.rb'
  end
  
  desc 'migrate to the database'
  task :migrate => :environment do
    Student.create_table
  end
  
  desc 'seeds the database with dummy data from a seed file'
  task :seed do
    Student.create(name: "Melissa", grade: "10th")
    Student.create(name: "April", grade: "10th")
    Student.create(name: "Luke", grade: "9th")
    Student.create(name: "Devon", grade: "11th")
    Student.create(name: "Sarah", grade: "10th")
    
  end
end