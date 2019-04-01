class MyClass
# using the self keyword 
	def first_method
		puts "Current instance within first_method: #{self}"
		self.second_method
	end
	
	def second_method
		puts "Current instance within second_method: #{self}"
	end
end

my_object = MyClass.new
my_object.first_method
