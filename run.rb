require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

man1 = Manager.new("Adam", "IT", 26)
man2 = Manager.new("Corey", "Marketing", 28)
man3 = Manager.new("Javon", "Acc and Fin", 31)

employ1 = Employee.new("Xiao", 100, "Adam")
employ2 = Employee.new("John", 1200, "Adam")

binding.pry
puts "done"
