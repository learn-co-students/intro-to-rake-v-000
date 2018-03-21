require 'sqlite3'
require 'pry'

require_relative "../lib/student.rb"

DB = {:conn => SQLite3::Database.new("db/students.db")}

#to grant it access, we just need to say
