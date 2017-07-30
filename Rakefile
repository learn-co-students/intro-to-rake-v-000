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
  desc 'invokes the :environment task as a dependency'
  task :migrate  => :environment do 
    Student.create_table
  end

  desc 'seeds the database with dummy data from a seed file' 
  task :seed do 
  	require_relative "./lib/student.rb"
	
  	Student.create(name: "Melissa", grade: "10th")
  	Student.create(name: "April", grade: "10th")
	Student.create(name: "Luke", grade: "9th")
	Student.create(name: "Devon", grade: "11th")
	Student.create(name: "Sarah", grade: "10th")
  end 

  task :environment do 
  	require_relative './config/environment.rb'
  end
end