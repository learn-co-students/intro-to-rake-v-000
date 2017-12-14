desc 'requires the environment in rakefile'
task :environment do
  require_relative './config/environment'
end

desc 'provides a namespace for supported language greetings'
namespace :greeting do
  desc 'outputs hello to the terminal'
  task :hello do
    puts 'hello from Rake!'
  end

  desc 'outputs hola to the terminal'
  task :hola do
    puts 'hola de Rake!'
  end
end

desc 'provides a namespace for database connections'
namespace :db do
  desc 'creates student table'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'seeds the student table with data'
  task :seed do
    require_relative './db/seeds.rb'
  end
end
