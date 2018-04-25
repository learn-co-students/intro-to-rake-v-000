require 'pry'

task :environment do
  require_relative './config/environment'
end

namespace :greeting do
  desc 'outputs hello to the terminal'
    task :hello do
      # the code we want to be executed by this task
    puts "hello from Rake!"
  end

desc 'outputs hola to the terminal'
task :hola do
  puts "hola de Rake!"
end
end


namespace :db do
  desc 'migrate changes to your database'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'seed the database with some dummy data'
 task :seed do
   require_relative './db/seeds.rb'
 end
 end

#We'll make this task dependent on our environment task so
#that the Student class and the database connection load first.
 desc 'drop into the Pry console'
 task :console => :environment do
   Pry.start

 end
