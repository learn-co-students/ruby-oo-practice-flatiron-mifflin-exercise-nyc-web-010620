class Manager
    attr_accessor :departement
    attr_reader :age, :name

    @@all = []

    def initialize(name, departement, age)
        @name = name
        @departement = departement
        @age = age

        @@all << self
    end

    def self.all 
        @@all
    end

    def employees
        Employee.all.select { |employee| employee.manager == self }
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        Employee.all.map { |employee| employee.manager.departement }.uniq
    end

    def self.average_age
        total = Manager.all.map { |manager| manager.age }
        total.sum / total.length
    end
end