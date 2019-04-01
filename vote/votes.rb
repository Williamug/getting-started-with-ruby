lines = []
file = File.open("votes.txt") do |file|
    lines = file.readlines
end

puts file.class

