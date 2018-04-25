
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

desc "requires environment."
task :environment do
    require_relative './config/environment'
    puts "reqired envoronment."
end

namespace :db do
    desc 'migrates the database.'
    task :migrate => :environment do
        puts "Environment migrated."
    end

    desc 'seeds the database.'
    task :seed do
        require_relative './db/seeds'
        puts "Seed database."
    end
end
