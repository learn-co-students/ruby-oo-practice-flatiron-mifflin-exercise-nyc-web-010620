class Manager

    attr_accessor :name, :department, :age, :employees
    
    @@all = []

    def self.all
        @@all
    end

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []

        @@all << self
    end

    def hire_employee(name, salary)
        @employees << Employee.all.select { |employ| employ.name ==name && employ.salary == salary}
    end

    def self.all_departments
        Manager.all.map { |manager| manager.department }
    end

    def self.average_age
        manager_ages = Manager.all.map { |manager| manager.age }
        manager_ages.reduce(0) { |sum, el| sum + el }.to_f / manager_ages.length
    end

end
