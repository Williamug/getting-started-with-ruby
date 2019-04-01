class Dog
	# attribute reader name, age
	# in other languages this is the same as getters
	attr_reader :name, :age
	
	# this method raise an error when the value is empty
	def name = (value)
		if value == ""
			raise "Name can't be blank"
		end
		@name = value
	end

	# this method raises an error when 
	#the value of an age is negative
	def age = (value)
		if value < 0
			raise "An age of #{value} isn't valid!"
		end
	end

	# define the destination the object
	def move(destination)
		puts "#{@name} runs to the #{destination}."
	end

	# determines who the object talk
	def talk 
		puts "#{@name} says Bark!"
	end

	
	def report_age
		puts "#{@name} is #{@age} years old"
	end
end
# creating a new dog instance
dog = Dog.new
# name the new dog
dog.name = "Daisy"
# giving age to the dog
dog.age = 3

# Calling instance methods
dog.report_age
dog.talk
dog.move("bed")

