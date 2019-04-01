 # demonstration of creating a class in ruby
# Created: WilliamDk

#bird class
class Bird

	# method defining how the bird should make sound
	def talk
		puts "Chirp! Chirp!"
	end

	# method to define the movement of the bird
	def move(destination)
		puts "Flying to the #{destination}"
	end
end

# dog class
class Dog
	# make dog name
	def make_up_name
		@name = "Sandy"
	end

	# this method define how the dog make sound
	def talk
		puts "#{@name} says  Bark!"
	end

	# making up the age 
	def make_age
		@age = 5
	end

	# this method define the dog destination
	def move(destination)
		puts "#{@name} has #{@age}years and she is running to the #{destination}"
	end
end

# cat class
class Cat
	# this method define the speech for the cat
	def talk
		puts "Meow"
	end

	# this define the destination of the cat 
	def move(destination)
		puts "Running to the #{destination}"
	end
end

# creating new objects
bird = Bird.new
dog = Dog.new
cat = Cat.new

# calling methods on the objects
bird.move('tree')
dog.make_age
dog.make_up_name
dog.talk
dog.move('House')

bird.talk
cat.move('house')


