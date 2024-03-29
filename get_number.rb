# Get My number game
# written by: williamDk

puts "Welcome to 'Get My Number!'"

# Get the player's name, and greet them
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Store a random number for the player to guess
puts "I've got  a random number between 1 and 100"
puts "Can you guess it?"
target = rand(100) + 1

#Track how many guesses the player has made
num_guesses = 0

# Track whether the player has guessed correctly
guessed_it = false

puts "You've got #{10 - num_guesses} guesses left."
print "Make a guess: "
guess = gets.to_i

# Compare the guess to the target
# Print the approppriate message
if guess < target 
	puts "Oops. Your guess was LOW."
elsif guess > target
	puts "Oops. Your guess was HIGH."
elsif guess == target
	puts "Good job, #{name}!"
	puts "You guessed my number in #{num_guesses} guesses!"
	guessed_it = true
end

# If player ran out of turns, tell them what the number was
if not guessed_it
	puts "Sorry. You didn't get my number. (It was #{target}.)"
end
