

namespace :greeting do
  desc  'outputs to terminal in English'
  task :hello do
    puts "hello from Rake!"
  end

  desc 'outputs to terminal in Spanish'
  task :hola do
    puts "hola de Rake!"
  end
end

namespace :db do
  desc 'migrates database using SQL, creates table from Class'
  task :environment do
    require_relative './config/environment'
  end

  desc 'invokes :environment task, creates students table'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'seeds the database with dummy data'
  task :seed do
    require_relative './db/seeds.rb'
  end

end

desc 'drop into the Pry console'
task :console => :environment do
  Pry.start
end
