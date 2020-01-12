class Manager

    attr_accessor :age, :employees, :department#, all
    attr_reader :name

    @@all = []

    def initialize(name, department, age)
        @name = name
        @employees = []
        @@all << self
        @department = department
        @age = age
    end
    
    def self.all
        @@all
    end

    def self.all_departments
        @@all.map{|enum| enum.department}.uniq
    end

    def self.average_age
        @@all.map{|enum| enum.age}.inject(:+) / @@all.length
    end

    def hire_employee(name, salary)
        name = Employee.new(name, salary, self.department, self.name)
        self.employees << name
    end

end


    #/Manager#hire_employee
    #/takes a String argument and a 
    #Fixnum argument of an employee's name and the employee's salary, 
    #respectively, and adds that employee to the list of employees that the manager oversees
