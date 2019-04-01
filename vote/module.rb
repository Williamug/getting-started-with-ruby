module Friendly
    def method_one
        puts 'hello from Friendly'
    end
end

module Friendlier
    def method_two
        puts "hello from Friendlier"
    end
end

class MyClass 
    include Friendly
    include Friendlier
end

my_object = MyClass.new
my_object.method_one
my_object.method_two
