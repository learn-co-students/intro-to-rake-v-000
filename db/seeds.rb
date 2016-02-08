require_relative "../lib/student.rb"

Student.create(name: "Melissa", grade: "10th")
Student.create(name: "April", grade: "10th")
Student.create(name: "Luke", grade: "9th")
Student.create(name: "Devon", grade: "11th")
Student.create(name: "Sarah", grade: "10th")

# This "seed" data will be loaded into our database if we run the command
# "rake db:seed" after running the command "rake db:migrate" at the terminal.