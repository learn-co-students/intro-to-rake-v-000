
desc 'outputs hello to the terminal'
namespace :greeting do
  task :hello do
    puts "hello from Rake!"
  end
  task :hola do
    puts "hola de Rake!"
  end
end

task :environment do
  require_relative './config/environment'
end

desc 'migrate changes to your database'
namespace :db do
  task :seed do
    require_relative './db/seeds.rb'
  end
  task :migrate => :environment do
    Student.create_table
  end
end
