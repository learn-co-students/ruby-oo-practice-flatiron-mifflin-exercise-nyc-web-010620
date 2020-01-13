class Manager
    attr_reader :name
    attr_accessor :department, :age

    @@all = []

    def initialize(name,department,age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def employees
        Employee.all.select { |e| e.manager_name == self.name }
    end

    def hire_employee(employee_name,employee_salary)
        new_e = Employee.all.find { |e| e.name == employee_name }
        new_e.manager_name = self.name
        new_e.salary = employee_salary
    end

    def self.all
        @@all
    end

    def self.all_departments
        self.all.map { |m| m.department }
    end

    def self.average_age
        (self.all.map { |m| m.age }).sum / self.all.size
    end
end
