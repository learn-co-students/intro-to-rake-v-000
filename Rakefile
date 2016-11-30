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

desc 'establishes /config/environment as a dependency'
task :environment do
  require_relative './config/environment.rb'
end


namespace :db do
  desc 'Creates the students database table'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'seeds the database with the data in /db/seeds.rb'
  task :seed do
    require_relative './db/seeds.rb'
  end
end

