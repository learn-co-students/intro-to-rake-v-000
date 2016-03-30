task :environment do
  require_relative './config/environment'
end

desc 'outputs hello to the terminal' # This description is printed when we run "rake -T" at the terminal.
namespace :greeting do 
  task :hello do 
    puts "hello from Rake!"
  end

  desc 'outputs hola to the terminal'
  task :hola do 
    puts "hola de Rake!"
  end
end

namespace :db do 
  desc 'migrate changes to your database' 
  task :migrate => :environment do # This is a task depedency; the :environment task is run before the :migrate task to ensure that the :migrate task will work correctly.
    Student.create_table
  end

  desc 'seed the database with some dummy data'
  task :seed do 
    require_relative './db/seeds.rb'
  end
end

desc 'drop into the Pry console'
task :console => :environment do # This task dependency ensures that we have access to the Student class and the database connection.
  Pry.start 
end