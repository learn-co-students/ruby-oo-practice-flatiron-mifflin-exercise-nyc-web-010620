class Employee

@@all = []

attr_reader :name
attr_accessor :salary,:manager

    def initialize(name,salary,manager)
        @name = name 
        @salary = salary 
        @manager = manager 
        @@all.push(self)
    end 

    def self.all 
        @@all 
    end 

    def manager_name
        self.manager
    end 

    def self.paid_over(num)
        self.all.select do |employee|
            employee.salary > num 
        end 
    end 

    def Employee.find_by_department(department_string)
        arr =[]
        Manager.all.each do |manager|
           if manager.department == department_string
                arr.push(manager.employees)
           end 
        end 
        binding.pry 
        return arr[0]
    end 

    # def tax_bracket
    #     Employee.all.each do |employee|
    #         if employee.salary > self.salary 
    #         end 
    #     end 
    # end 


end

# **`Employee`**
#   * `Employee#name`
#     * returns a `String` that is the employee's name
#   * `Employee#salary`
#     * returns a `Fixnum` that is the employee's salary
#   * `Employee#manager_name`
#     * returns a `String` that is the name of their manager
#   * `Employee.all`
#     * returns an `Array` of all the employees
#   * `Employee.paid_over`
#     * takes a `Fixnum` argument and returns an `Array` of all the employees whose salaries are over that amount
#   * `Employee.find_by_department`
#     * takes a `String` argument that is the name of a department and returns the first employee whose manager is working in that department
#   * `Employee#tax_bracket`
#     * returns an `Array` of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
