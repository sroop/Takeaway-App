class Takeaway

	attr_reader :menu

	def initialize(menu = [])
		@menu = menu
	end

	def add(menu)
		@menu << menu
	end

	# def view_orders
	# end

	def place(order)
		@order = order.dishes
	end

end