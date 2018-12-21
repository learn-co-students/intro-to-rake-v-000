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
  desc 'migrate changes to your environment'
  task :migrate => :environment do 
    Student.create_table
  end
  
  desc 'seed the database with some dummy data'
  task :seed do 
    require_relative './db/seeds.rb'
  end
end

task :environment do 
  require_relative './config/environment.rb'
end

desc 'drop into the Pry console'
task :console => :environment do 
  Pry.start 
end

# This is a little test of my own, for experimentation's sake.
# Note that greeting:hello did NOT originally depend on :testingthis.
# Also, to finish this little test of mine, have greeting:hello depend on :testingthis (but undo that at the end, or it'll fail the rspec tests!):
# 
# task :testingthis do 
#   puts "Testing!"
# end
# 
# These tasks won't work:
# 
# task :testingthis => greeting:hello do 
#   puts "Testing!"
# end
# 
# task :testingthis => :greeting:hello do 
#   puts "Testing!"
# end 
# 
# task :testingthis => :hello do 
#   puts "Testing!"
# end