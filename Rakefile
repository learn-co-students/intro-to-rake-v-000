task :environment do
  require_relative 'config/environment'
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

end

namespace :db do

  desc 'migrates changes to your database (creates the table)'
  task :migrate => :environment do
    Student.create_table
    puts "Ran Student.create_table"
  end

  desc 'prints the database contents'
  task :show_database => :environment do
    DB[:conn].results_as_hash = true
    puts DB[:conn].execute('SELECT * FROM students')
  end

  desc 'seeds the database with dummydata'
  task :seed do
    require_relative 'db/seeds'
  end
end
