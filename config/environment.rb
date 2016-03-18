require 'sqlite3'
require 'pry'
require 'require_all'

def reload!
  require_all './lib/student.rb'
end

require_relative "../lib/student.rb"

puts "New is loaded!"

DB = {:conn => SQLite3::Database.new("db/students.db")}