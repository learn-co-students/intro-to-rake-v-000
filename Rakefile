desc 'outputs hello to the terminal'
task :hello do
  puts "hello from Rake!"
end

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
  desc 'creates the students table'
  task :migrate => :environment do
    Student.create_table
  end

  task :environment do
    require_relative './config/environment'
  end

  desc 'seeds the database with dummy data from the seed file'
  task :seed do
    require_relative './db/seeds.rb'
  end
end
