task :environment do
  require_relative './config/environment'
end

namespace :greeting do
desc 'Outputs hello to the terminal'
  task :hello do
    puts "hello from Rake!"
    puts "hello from Drake!"
  end

  desc 'Outputs hola a la terminal'
    task :hola do
      puts "hola de Rake!"
    end
  end

desc 'Migrate changes to your database'
namespace :db do
  task :migrate => :environment do
    Student.create_table
  end

  desc 'Seed the database with dummy data'
    task :seed do
      require_relative './db/seeds.rb'
    end

desc 'drop into the Pry console'
  task :console => :environment do
    Pry.start
  end

end
