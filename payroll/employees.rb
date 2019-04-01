=begin
	This is a simple ruby programm that calculate the salary of an employee
	and a hourly pay of some of the employees 
	
	Requirements
	=============
	in order to run this programm you should install ruby version 2.3 or higher
	a basic text editor like note pad, vs code, sublime text, vim, etc
	You should have some little understanding excuting a command in terminal or windows cmd
	since this is a command line programm
	
	Author: WilliamDk
	website: williamug.wordpress.com
		creativesummit.xyz
		
	social:
	========== 
		facebook: facebook.com/william.dk.195
		twitter: WilliamAsaba
		github: williamug
=end

# class employee
class Employee
	# declaring the attribute reader for the name
	attr_reader :name
	
	# defining the name for the employee and then validate it
	def name=(name)
		if name == ""
			raise "Name can't be blank!"
		end
		@name = name
	end

	#initialize the name in the constructor
	def initialize(name = "Anonymous")
		self.name = name
	end
	
	# print out the name of the employee
	def print_name
		puts "Name: #{name}"
	end
end

class SalariedEmployee < Employee

	#declaring the salaried attribute reader
	attr_reader :salary
	
	# declaring the method for the salary
	def salary=(salary)
		if salary < 0
			raise "A salary of #{salary} is not valid!"
		end
		@salary = salary
	end
	
	#initializing the salaried employee class
	def initialize(name = "Anonymous", salary = 0.0)
		super(name)
		self.salary = salary
	end

	# print out the pay stub
	def print_pay_stub
		print name
		# calculate the two week's pay and then format the pay with
		# two decimal places
		pay_for_period = (salary / 365.0) * 14
		formatted_pay = format("$%.2f", pay_for_period)
		puts "Pay This Period: #{formatted_pay}"
	end
end

# class hourly pay
class HourlyEmployee < Employee
	def self.security_guard(name)
		HourlyEmployee.new(name, 19.25, 30)
	end

	def self.cashier(name)
		HourlyEmployee.new(name, 12.75, 25)
	end

	def self.janitor(name)
		HourlyEmployee.new(name, 10.50, 20)
	end
	
	# these attributes are specific to the hourly employee
	attr_reader :hourly_wage, :hours_per_week
	
	# hourly wage writer
	def hourly_wage=(hourly_wage)
		if hourly_wage < 0 
			raise "An hourly wage of #{hourly_wage} is not valid"
		end
		@hourly_wage = hourly_wage
	end

	# hours per week for the employee
	def hours_per_week=(hours_per_week)
		if hours_per_week < 0
			raise "#{hours_per_week} hours per week is not valid"
		end
		@hours_per_week = hours_per_week
	end

	# this initialize method is only called when 
	# we call hourlyEmployee.new
	def initialize(name="Anonymous", hourly_wage = 0.0, hours_per_week =0.0)
		super(name)
		self.hourly_wage= hourly_wage
		self.hours_per_week = hours_per_week
	end

	# print the pay out
	def print_pay_stub
		print_name
		# calculate the two weeks pay
		pay_for_period = hourly_wage * hours_per_week * 2
		formatted_pay = format("$%.2f", pay_for_period)
		puts "Pay This Period: #{formatted_pay}"
	end
end

# creating new objects for the employees
jane = SalariedEmployee.new("Jane Doe ", 50000)
jane.print_pay_stub

angela = HourlyEmployee.security_guard("Angela Matthews")
ivan = HourlyEmployee.cashier("Ivan Stockes")

angela.print_pay_stub
ivan.print_pay_stub
	

	

