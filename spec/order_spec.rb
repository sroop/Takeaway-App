require 'order'

describe 'Order' do
	
	let(:salmon_sashimi) { double :dish, name: "Salmon Sashimi", price: 11 }
	let(:order) { Order.new }

	it 'has no dishes when created' do
		expect(order.dishes).to be_empty
	end

	it 'can add a dish and specify the quantity' do
		expect(order.dishes).to be_empty
		order.add(salmon_sashimi, 3)
		expect(order.dishes).to eq([salmon_sashimi, salmon_sashimi, salmon_sashimi])
	end

end