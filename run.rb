require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager1 = Manager.new("Tom", "Staffing", 21)
manager2 = Manager.new("Jerry", "HR", 72)

sydney = Employee.new("Sydney", 15000, "Staffing", "Tom")
second = Employee.new("second", 15500, "Staffing", "Tom")

#ruby = Employee.new("")
#max = Employee.new("Max","55000","Tom")


#(name, salary, manager)

binding.pry
puts "done"