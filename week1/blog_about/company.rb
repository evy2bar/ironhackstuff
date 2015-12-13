class Company
	def initialize (building_number)
    @company_employees = []
    @building_number = building_number
   end

   def add_employee(employee)
   	@company_employees.push(employee)   #=======>>add employees to the array
   end

   def pay_employees 

   end
end




class Employee
	attr_accessor(:name, :salary) #allows to access the variable, not the instance variable.
	def initialize(name, salary)  #method. it contains atributes
		@name =  name.upcase  #instance variables than only live inside the initialize (@)
		#puts name.upcase    ====do the same like @name = name.upcase            
		@salary = salary
	end

    def name_and_salary           #method
	puts "#{name} #{salary}"
    end	

end

 #this is call the aplication code#

user1 = Employee.new("Eve", 100000)          #==============object
 user2 = Employee.new("raul", 500000)
 user3 = Employee.new("san", 100000)
 employees = [user1,user2, user3]
 #employee
 big_company = Company.new(employees, "128 sw 12 street")
 user1.name_and_salary

big_company.add_employee(user1) #=======> adding user1 to the big_company