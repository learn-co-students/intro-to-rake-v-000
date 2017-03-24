namespace :greeting do
desc 'outputs hello to the terminal'
task :hello do
  puts "hello from Rake!"
end

task :hola do
  puts "hola de Rake!"
end

end


desc 'migrate changes to your database'
namespace :db do

  task :environment do
  require_relative 'config/environment'
  end

    task :migrate => :environment do
    Student.create_table
  end

  desc 'it will seed the database'
  task :seed do
    require_relative './db/seeds.rb'
  end

end
