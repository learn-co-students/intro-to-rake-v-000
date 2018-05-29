
namespace :greeting do

  desc 'outputs hello to the terminal'
  task :hello do
    puts "hello from Rake!"
  end

  desc 'outputs hello in spanish!'
  task :hola do
    puts "hola de Rake!"
  end
end

namespace :db do
  desc 'invokes environment & migrate new table data'
  task :migrate => :environment do
    Student.create_table
  end

  task :environment do
    require_relative './config/environment'
  end

  desc 'insert dummy data'
  task :seed do
    require_relative './db/seeds.rb'
  end
end
