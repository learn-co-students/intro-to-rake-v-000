desc 'outputs hello to the terminal'
task :hello do
  puts "hello from Rake!"
end

namespace :greeting do 
  desc " "
  task :hello do
    puts "hello from Rake!"
  end
  desc " "
  task :hola do
   puts "hola de Rake!"
  end
end

namespace :db do
  desc " "
  task :migrate => :environment do 
    Student.create_table
  end
  
  desc " "
  task :seed do
    require_relative './db//seeds.rb'
  end
end 

task :environment do
  require_relative './config/environment'
end



