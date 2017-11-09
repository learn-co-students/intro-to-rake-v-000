
desc 'drop into the pry console'
  task :console => :environment do
    Pry.start
  end

  desc 'requires the environment file'
  task :environment do
    require_relative './config/environment'
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

end #end of :greeting

namespace :db do
  desc 'migrate changes to your database'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'requires the environment file'
    task :environment do
      require_relative './config/environment'
    end

  desc 'seed the database with some dummy data'
    task :seed do
      require_relative './db/seeds.rb'
    end
    #Note how it get something to run just by requiring the file
end
