#rake allows us to automate certain jobs
#Rake provides us a standard, conventional way to define and execute such tasks using Ruby.
#task management tool

namespace :greeting do
  #It is possible to namespace your Rake tasks. What does "namespace" mean?
  #A namespace is really just a way to group or contain something, in this case our Rake tasks
  desc 'outputs hello to the terminal'
  task :hello do
    puts "hello from Rake!"
  end

  #We define tasks with task + name of task as a symbol + a block that contains the code we want to execute.

  desc 'outputs hola to the terminal'
  task :hola do
    puts "hola de Rake!"
  end
end

namespace :db do
  desc 'migrate changes to your database'
  task :migrate => :environment do
    Student.create_table
  end

  desc 'seed the database with some dummy data'
  task :seed do
    require_relative './db/seeds.rb'
  end
end

desc 'drop into the Pry console'
task :console => :environment do
  Pry.start
end


# task dependency. Since our Student.create_table code would require access to
#the config/environment.rb file (which is where the student class and database
#are loaded), we need to give our task access to this file. We can do so by
#defining yet another Rake task that we can tell to run before the migrate task is run.
desc 'give task access to config/environment.rb file'
task :environment do
  require_relative './config/environment'
end
