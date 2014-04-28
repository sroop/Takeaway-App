require 'menu'

describe 'Menu' do
	
	let(:salmon_sashimi) { double :dish, name: "Salmon Sashimi", price: 11 }
	let(:tuna_sashimi) { double :dish, name: "Tuna Sashimi", price: 9 }
	let(:mackerel_sashimi) { double :dish, name: "Mackerel Sashimi", price: 10 }
	let(:menu) { Menu.new([salmon_sashimi, tuna_sashimi]) }

	it 'has a list of dishes' do
		expect(menu.dishes).to eq([salmon_sashimi, tuna_sashimi])
	end

	it 'can add a dish to the existing menu' do
		expect(menu.dishes).to eq([salmon_sashimi, tuna_sashimi])
		menu.add(mackerel_sashimi)
		expect(menu.dishes).to eq([salmon_sashimi, tuna_sashimi, mackerel_sashimi])
	end

end