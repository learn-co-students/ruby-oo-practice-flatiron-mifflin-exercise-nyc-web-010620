class Employee
    attr_reader :name
    attr_accessor :salary, :manager_name

    @@all = []

    def initialize(name)
        @name = name
        @salary = nil
        @manager_name = nil

        @@all << self
    end

    def tax_bracket
        my_salary = self.salary
        my_name = self.name
        self.class.all.select { |e| ((e.salary - my_salary).abs <= 1000) && e.name != my_name }
    end

    def self.all
        @@all 
    end

    def self.paid_over(amount)
        self.all.select { |e| e.salary > amount }        
    end

    def self.find_by_department(dept)
        manager = Manager.all.find { |m| m.department == dept }
        manager.employees[0]
    end

end
