require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

e_names = ['Amy',"Bob","Charlie","Dennis","Emily","Fred","Georgia"]
e_salaries = [25000,25500,25250,14000,14500,19000,34000]
m_names = ["Josh","Jenny","John"]
m_departments = ["Accounting","Sales","Shipping"]
m_ages = [32,34,36]

(0..6).each{ |i| Employee.new(e_names[i])}
(0..2).each{ |i| Manager.new(m_names[i],m_departments[i],m_ages[i])}

m = Manager.all
e = Employee.all

m[0].hire_employee(e_names[0],e_salaries[0])
m[0].hire_employee(e_names[1],e_salaries[1])
m[1].hire_employee(e_names[2],e_salaries[2])
m[1].hire_employee(e_names[3],e_salaries[3])
m[1].hire_employee(e_names[4],e_salaries[4])
m[2].hire_employee(e_names[5],e_salaries[5])
m[2].hire_employee(e_names[6],e_salaries[6])


#Test your code here


binding.pry
puts "done"
