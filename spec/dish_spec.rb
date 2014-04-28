require 'dish'

describe 'Dish' do
	
	let(:dish) { Dish.new("Salmon Sashimi", 11) }

	it 'has a name' do
		expect(dish.name).to eq("Salmon Sashimi")
	end

	it 'has a price' do
		expect(dish.price).to eq(11)
	end

end