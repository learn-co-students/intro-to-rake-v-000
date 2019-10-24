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
  desc 'migrate changes to your database'
  task :environment do #defines a rake task tha we can tell to run before the migrate task is run.
    require_relative './config/environment'
  end
  task :migrate => :environment do #creates a task dependenct
    Student.create_table
  end
  desc 'seed the database with some dummy data'
  task :seed do 
    require_relative './db/seeds.rb'
  end
  desc 'drop into the Pry console' #defines task that starts up the Pry console. this task is dependent on our environment task so that the Student class and the database connection load first.
  task :console => :environment do 
    Pry.start
  end

end

