#================environment===================  
task :environment do
  require_relative './config/environment'
end
#==============================================


#=================greetings==================== 
namespace :greeting do 
#==============================================   
  # HELLO
  desc 'outputs hello to the terminal'
  task :hello do
    puts "hello from Rake!"
  end
  
  # HOLA
  desc 'outputs hola to the terminal'
  task :hola do 
    puts "hola de Rake!"
  end
#==============================================   
end


#==================database====================
namespace :db do
#============================================== 
  # MIGRATE
  desc 'migrate changes to your database'
  task :migrate => :environment do
    Student.create_table
  end
  
  # SEED
  desc 'seed the database with some dummy data'
  task :seed do 
    require_relative './db/seeds.rb'
  end
#==============================================
end


#==================console=====================
desc 'Pry console'
task :console => :environment do
  Pry.start 
end
# quick exit
def x;exit!;end