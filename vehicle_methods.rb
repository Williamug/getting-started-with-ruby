# vehicle methods
# created by WilliamDk

# acceleration
def accelerate
	puts "Stepping on the gas"
	puts "Speeding up"
end

# horn sound
def sound_horn
	puts "Pressing the horn button"
	puts "Beep beep!"
end

# controlling the headlights
def use_headlights(brightness)
	puts "Turning on #{brightness} headlights"
	puts "Watch out for deer!"
end

# Calculating the mileage of the vehicle
def mileage(miles_driven, gas_used)
	if gas_used == 0
		return 0.0
	end
	miles_driven / gas_used
end

# calling the methods

accelerate
sound_horn
use_headlights("high-beam")
puts mileage(400, 12)
puts mileage(0,0)
