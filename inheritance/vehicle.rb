class Vehicle
	# setting up writers and readers for the class
	attr_accessor :odometer
	attr_accessor :gas_used

	# accelerate
	def accelerate
		puts "Floor it!"
	end
	
	# horn sound
	def sound_horn
		puts "Beep! Beep!"
	end
	
	# steering 
	def steer
		puts "Turn front 2 wheels"
	end

	# mileage
	def mileage
		return @odometer / @gas_used
	end
end

