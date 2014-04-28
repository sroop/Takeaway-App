class Order

	attr_reader :dishes

	def initialize
		@dishes = []
	end

	def add(dish, quantity)
		order = quantity.times.map { dish }
		@dishes.concat(order)
	end

end