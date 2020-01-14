class Employee
    attr_accessor :salary, :manager
    attr_reader :name

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager

        @@all << self
    end

    def self.all 
        @@all
    end

    def manager_name
        self.manager.name
    end

    def self.paid_over(salary)
        self.all.select { |employee| employee.salary > salary }
    end

    def self.find_by_department(department)
        Employee.all.find { |employee| employee.manager.departement == department }
    end

    def tax_bracket
        Employee.all.select { |employee| ((self.salary - 1000)..(self.salary + 1000)).include?(employee.salary) && self != employee }
    end
end