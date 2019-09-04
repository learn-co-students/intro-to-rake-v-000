namespace :greeting do

  desc 'outputs hello to the terminal'
  task :hello do
    puts "hello from Rake!"
  end

  desc 'outputs hola to the terminal'
  task :hola do
    puts "hola de Rake!"
  end

end # end of greeting namespace
namespace :db do

    desc 'migrate changes to your database' # we are migrating db by applying SQL to alter it
    task :migrate => :environment do
      Student.create_table
    end

    desc 'seed the database with some dummy data'
    task :seed do
      require_relative'./db/seeds.rb'
    end

end # end of db namespace

task :environment do
  require_relative './config/environment'
end

desc 'drop into the Pry console'
  task :console => :environment do
    Pry.start
end