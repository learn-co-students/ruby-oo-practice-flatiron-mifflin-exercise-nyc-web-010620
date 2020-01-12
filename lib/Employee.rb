class Employee
    attr_accessor :name, :department
    attr_reader :salary, :manager_name, :department
    
    @@all = []

    def initialize(name, salary, department, manager_name)
        @name = name
        @salary = salary
        @department = department
        @@all << self
        @manager_name = manager_name
    end

    def self.paid_over(number)
        @@all.select{|employee| employee.salary > number}
    end

    def self.all
        @@all
    end

    def tax_bracket
        @@all.select{|employee| employee.salary > self.salary - 1000 && employee.salary < self.salary + 1000}
    end

    def self.find_by_department(search)
        @@all.find{|employee| employee.department == search}
    end

    def manager_name
        return @manager_name
    end


end
