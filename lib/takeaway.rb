class Takeaway

	attr_reader :menu

	def initialize(menu = [])
		@menu = menu
	end

	def add(menu)
		@menu << menu
	end

end