require "pry"
require_relative "./Employee.rb"
require_relative "./Manager.rb"

m1 = Manager.new("Amanda","Sales",52)
m2 = Manager.new("Rob","Marketing",13)
m3 = Manager.new("Alejo","R&D",3)

e1 = Employee.new("Miles",20000,m1)
e2 = Employee.new("Mark",20500,m1)
e3 = Employee.new("Danyelle",5000,m3)





binding.pry 