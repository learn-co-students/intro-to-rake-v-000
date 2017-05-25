#####namespace :greeting                                                                                                                                      
#####greeting:hello
#should print out 'hello from Rake!'
#####greeting:hola
#should print out 'hola de Rake!'
#####namespace :db
#db:migrate
#invokes the :environment task as a dependency
#create the students table in the database
#####db:seed
#seeds the database with dummy data from a seed file


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

desc 'migrate changes to your database'
namespace :db do
  task :migrate => :environment do
    Student.create_table
  end

  desc 'seed the database with some dummy data'
  task :seed do
    require_relative './db/seeds.rb'
  end
end

desc 'drop into the Pry console'
task :console => :environment do
  Pry.start
end
