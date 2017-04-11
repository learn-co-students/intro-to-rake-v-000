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

desc 'migrating changes to database'
namespace :db do
	task :environment do
		require_relative './config/environment'
	end

	task :migrate => :environment do
		Student.create_table
	end
end

desc 'seed the database with some dummy data'
namespace :db do
	task :seed do
		require_relative './db/seeds.rb'
	end
end

desc 'drop into the pry console'
namespace :pry do
	task :environment do
		require_relative './config/environment'
	end
	task :console => :environment do
		Pry.start
	end
end