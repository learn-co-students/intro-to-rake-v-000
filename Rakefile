namespace :greeting do
  desc 'outputs hello to the terminal'
  task :hello do
    puts "hello from Rake!"
  end

  desc 'prints out hello'
  task :hola do
    puts "hola de Rake!"
  end
end

namespace :db do
  desc 'adds enivornment as a depdency, creates the student table in the database'
  task :migrate => :environment do
    Student.create_table
  end
  task :environment do
    require_relative './config/environment'
  end
  desc 'adds dummy data to the database'
  task :seed do
    require_relative 'db/seeds.rb'
  end
end
