
namespace :greeting do
  desc 'outputs hello to the terminal'
  task :hello do
    puts "hello from Rake!"
  end

  task :hola do
    puts "hola de Rake!"
  end
end


namespace :db do
  desc 'migrates changes in the database'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'seeds dummy data into database'
  task :seed do
    require_relative "./db/seeds"
  end
end

task :environment do
  require_relative "./config/environment"
end

desc 'drop into the Pry console'
task :console => :environment do
  Pry.start
end
