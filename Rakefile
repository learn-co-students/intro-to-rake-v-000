task :environment do
    require './config/environment.rb'
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
task :migrate => :environment do
Student.create_table
end
task :seed do
    require './db/seeds.rb'
end
end