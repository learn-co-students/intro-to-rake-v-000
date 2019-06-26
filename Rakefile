desc 'outputs hello to the terminal'
task :hello do
  puts "hello from Rake!"
end

namespace :greeting do

  desc 'prints out hello from rake'
  task :hello do
    puts "hello from Rake!"
  end

  desc 'prints out hola from rake'
  task :hola do
    puts 'hola de Rake!'
  end

end

namespace :db do

  desc 'migrate changes to the database'
  task :migrate => :environment do
    Student.create_table
  end

  task :environment do
    require_relative 'config/environment'
  end

  task :seed do
    require_relative 'db/seeds'
  end

end
