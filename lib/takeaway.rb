require_relative './text.rb'

class Takeaway

	include Text

	attr_reader :menu

	def initialize(menu = [])
		@menu = menu
	end

	def add(menu)
		@menu << menu
	end

	def place(order)
		@order = order.dishes
	end

	def confirm(order)
		send_text
	end

end