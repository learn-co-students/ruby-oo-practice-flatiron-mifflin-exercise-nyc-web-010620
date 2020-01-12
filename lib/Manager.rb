class Manager


@@all = []

attr_reader :name
attr_accessor :age,:department, :employee

    def initialize(name,department,age)
        @name = name 
        @department = department 
        @age = age 
        @@all.push(self)
    end 

    def self.all 
        @@all 
    end 

    def employees
        Employee.all.select do |employee|
            employee.manager == self
        end  
    end 

    def hire_employee(employee_name,salary)
        employee_name = Employee.new(employee_name,salary,self)
    end 

    def self.all_departments
        self.all.map do |manager|
            manager.department
        end
    end 

    def self.average_age
        age_arr = self.all.map do  |manager|
            manager.age
        end 
        summed_age_arr = age_arr.reduce do |agg, element|
            agg + element
        end 
        summed_age_arr.to_f / age_arr.length 
    end 



end


# **`Manager`**
#   * `Manager#name`
#     * returns a `String` that is the manager's name
#   * `Manager#department`
#     * returns a `String` that is the department that the manager oversees
#   * `Manager#age`
#     * returns a `Fixnum` that is the age of the manager
#   * `Manager#employees`
#     * returns an `Array` of all the employees that the manager oversees
#   * `Manager.all`
#     * returns an `Array` of all the managers
#   * `Manager#hire_employee`
#     * takes a `String` argument and a `Fixnum` argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees
#   * `Manager.all_departments`
#     * returns an `Array` of all the department names that every manager oversees
#   * `Manager.average_age`
#     * returns a `Float` that is the average age of all the managers
