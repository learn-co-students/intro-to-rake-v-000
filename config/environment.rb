require 'sqlite3'
require 'pry'

# quick exit
def x; exit!;end


require_relative "../lib/student.rb"

DB = {:conn => SQLite3::Database.new("db/students.db")}
