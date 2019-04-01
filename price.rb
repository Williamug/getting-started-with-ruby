def total(prices)
	amount = 0
	# process eacb price 
	prices.each do |price|
		# add the current price to the total
		amount += price
	end
	amount # return the final total 
end

def refund(prices)
	amount = 0 
	prices.each do |price|
		amount -= price # refund the current price
	end
	amount
end

def show_discounts(prices)
	prices.each do |price|
		amount_off = price / 3.0
		# format and print the current discount 
		puts format("Your discount: $%.2f", amount_off)
	end
end

prices = [3.99, 25.00, 8.99]

puts format("%.2f", total(prices))
puts format("%.2f", refund(prices))

show_discounts(prices)
