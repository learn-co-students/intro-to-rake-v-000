namespace :greeting do
desc 'outputs hello to the terminal'
task :hello do
  puts "hello from Rake!"
  end

desc 'outputs hola to the terminal'
task :hola do
  puts "hola de Rake!"
end

desc 'outputs moikka to the terminal'
task :moikka do
  puts "moikka!"
  end
end

desc 'migrate changes to the database'
namespace :db do
  task :migrate => :environment do
    Student.create_table
  end

  desc 'seed the database with some dummy data'
  task :seed do
    require_relative './db/seeds.rb'
  end

end

desc 'requires env file'
task :environment do
  require_relative './config/environment'
end

desc 'drop into the Pry console'
task :console => :environment do
  Pry.start
end
