# this prints out the length of the text
puts "gin joint".length

# this points out the position of c
puts "Rick".index('c')

# this checks if the number is even
puts 42.even?

# find the absolute value of the number
num = -1234 # => -1234
positive = num.abs

puts positive

# methods
def say_goodnight(name)
	result = "Good night, " + name
	return result
end

# we are going to print out the message
# time for bed
puts say_goodnight("John-Boy")
puts say_goodnight("Mary-Ellen")
