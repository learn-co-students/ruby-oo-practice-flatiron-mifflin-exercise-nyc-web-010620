require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

manager1 = Manager.new("Johny", "Accounting", 42)
manager2 = Manager.new("Michael", "Sales", 50)


employee1 = Employee.new("Pam", 50000, manager2)
employee2 = Employee.new("Jim", 95000, manager1)
employee3 = Employee.new("Dwight", 70000, manager2)
employee4 = Employee.new("Angela", 70000, manager1)
employee5 = Employee.new("Kelly", 85000, manager2)
employee6 = Employee.new("Andy", 80000, manager1)
employee7 = Employee.new("Ryan", 76000, manager2)
employee8 = Employee.new("Kevin", 90000, manager1)
employee9 = Employee.new("Philis", 50000, manager2)
employee10 = Employee.new("Stanley", 60000, manager1)
employee11 = Employee.new("Erin", 75000, manager2)

employee12 = Employee.new("Schmuk", 64000, manager2)
employee13 = Employee.new("Danny", 65000, manager2)
employee14 = Employee.new("Gordon", 66000, manager2)



binding.pry
puts "done"
