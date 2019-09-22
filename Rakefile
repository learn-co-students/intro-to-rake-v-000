namespace :greeting do 
#sets a namespace, basically, it groups the task based on what we decide is logical
desc 'outputs hello to the terminal'
#described the task so that when we go to look them up, we can get a decent idea of what a symbol means
  task :hello do 
#assigns a task to a SYMBOL (imporant here)
    puts "hello from Rake!"
#functionality
  end
 
desc 'outputs hola to the terminal'
  task :hola do 
    puts "hola de Rake!"
  end
end

namespace :db do
    
task :environment do
#in order to make changes in the DB, we need to access our code, which requires all
#dependencies be lined up correctly.  So, we must include our environment folder
        require_relative './config/environment'
end

desc 'migrate changes to your database'
    task :migrate => :environment do
        Student.create_table
#this creates a task dependency, which as we know, is tied to our config/environment.rb  
#We also know that this is where all the magic happens (class and db).  We are
#giving access to this folder, and that is why we had to define another task, which
#is above.
  end
  
desc 'seed the database with some dummy data'
    task :seed do 
        require_relative './db/seeds.rb'
  end
#We put the code we wanted into seeds.rb.  The task here is executing that code
#This must also be namespaced under DB
#Since our table was created with db:migrate, this data will be recorded into the
#database
#Not show is the task that will bring up Pry to make sure all this acted in accordance
#of what we wanted it to do.  here is the code
#
#
#
#desc 'drop into the Pry console'
#   task :console => :environment do
#     Pry.start 
#end
#
#
#
end


