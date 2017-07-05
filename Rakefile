task :environment do
  require_relative './config/environment'
end

desc 'prints greeting to the terminal'
namespace :greeting do

  desc 'outputs hello to the terminal'
  task :hello do
    puts "hello from Rake!"
  end

  desc 'outputs hola to the terminal'
  task :hola do
    puts 'hola de Rake!'
  end
  
end

namespace :db do

  desc 'migrates changes to your db'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'seed database with dummy data'
  task :seed do
    require_relative './db/seeds'
  end

end

desc 'drop into pry console'
  task :console => :environment do
    Pry.start
end