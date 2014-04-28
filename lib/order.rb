class Order

	attr_reader :dishes

	def initialize
		@dishes = []
	end

	def add(dish, quantity)
		order = quantity.times.map { dish }
		@dishes.concat(order)
	end

	def total_price
		@dishes.inject(0) { |accu, dish| accu + dish.price }
	end

end