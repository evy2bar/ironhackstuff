class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
    def taxes   #======================>>>>> you want this action to afect all employees, so you wanted in this class.
      @total_salary = (@total_salary * 1.18) - @total_salary

    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #eturns the hours worked * hourly_rate
      @total_salary = @hourly_rate * @hours_worked
    end
end
class SalariedEmployee < Employee
    def initialize(name, email, year_rate)
        @name = name
        @email = email
        @year_rate = year_rate
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      @total_salary = @year_rate / 52
    end
end
class MultiPaymentEmployee < Employee
    def initialize(name, email, base_salary, hourly_rate, total_hours)
        @name = name
        @email = email
        @base_salary = base_salary
        @hourly_rate = hourly_rate
        @total_hours = total_hours
    end
    

    def calculate_salary
      #returns the hours worked * hourly_rate
      @total_salary = @base_salary/52 + (@total_hours - 40) * 275
    end

end



class Payroll
  def initialize(employees)
        @employees = employees
  end
  

  def pay_employees
  	 @weekly_payroll = 0     # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
     @employees.each do |employee|# ==>> when you erase the s ruby recognice inthe .each do that is a single item.
      
       	@weekly_payroll += employee.calculate_salary
        puts "Employee: #{employee.name}."
        puts "Salary: #{employee.calculate_salary}"
        puts "After taxes: #{employee.taxes}"
        notify_employee(employee)          
         puts "\n\n"
        end
      

     puts "Total Payroll:"
     puts @weekly_payroll

  end 
  def notify_employee(employee)   #============>>>create this function and later i call it(on line 75)
    puts "Your Payroll is ready to be use"         #it doesent matter where i write this def(before or after the loop), as soon as i call it on the loop, its gonna work
    puts "send to: #{employee.email} "
    puts "\n\n"
  end
end


josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)

nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)

ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

eve = HourlyEmployee.new('Eve', 'evy@gmail.com', 15, 45)

gin = HourlyEmployee.new('Gin', 'gin@gmail.com', 15, 50)

employees = [josh, nizar, ted, eve, gin]
payroll = Payroll.new(employees)
payroll.pay_employees
