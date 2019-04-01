# blocks
#=========
# A block is a chuck of code that you associate with a method call 

# this method takes a block as a parameter

=begin

if you place an ampersand before the last parament in a method definition
then ruby will expect to attach a bock to a call method and this will convert
a block into an object and store it that parameter

the call method that is attached on the block invoke(excutes) the code in 
the block

To write a block we

name_of_a_method do
	do stuff here...
end

we begin by writing do keyword
put statements and then end with the end keyword

=end

def my_method(&my_block)
	puts "We are in the method, about to invoke your block"
	
	# the call method calls a block
	yield
	puts "We are back in the method"
end

my_method do 
	puts "We are in the block!"
end

# this method takes in a block that has more than one parameter
def give(&my_block)
	puts ""
	my_block.call("2 turtle doves", "1 partridge")
end

=begin

we can add paraments from the method to the block
When we add paramentes to the block we define then between vertical bars (|). 
If there are more than one paramenter we use commas to separate them

=end

give do |present1, present2|
	puts "My method gave to me..."
	puts present1, present2
end
