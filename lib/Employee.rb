class Employee

    attr_accessor :name, :salary, :manager_name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name

        @@all << self
    end

    def self.paid_over(salary)
        self.all.select { |employ| employ.salary > salary}
    end

    def self.find_by_department(department)
        Manager.all.find { |manager|
            if manager.department == department
                return manager.employees.first
            end
        }
    end

    def tax_bracket
        Employee.all.select { |employ|
            employ if (self.salary - 1000..self.salary + 1000).include?(employ.salary) && employ.name != self.name}
    end
end
