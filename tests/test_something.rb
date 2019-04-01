# load MiniTest
require 'minitest/autorun'

# create a subclass of Minitest::Test
class TestSomething < Minitest::Test
     def test_true_assertion
        # this test will pass
        assert(true)
     end

     def test_false_assertion
   	# this test will fail
    	 assert(false)
     end
end
