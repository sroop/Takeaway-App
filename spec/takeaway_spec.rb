require 'takeaway'

describe 'Takeaway' do

	let(:sushi_menu) { double :menu }
	let(:donburi_menu) { double :menu }
	let(:takeaway) { Takeaway.new([sushi_menu]) }
	let(:salmon_sashimi) { double :dish, name: "Salmon Sashimi", price: 11}
	let(:my_order) { double :order, dishes: salmon_sashimi }

	it 'has a menu' do
		expect(takeaway.menu).to eq([sushi_menu])
	end

	it 'can add more menus' do
		expect(takeaway.menu).to eq([sushi_menu])
		takeaway.add(donburi_menu)
		expect(takeaway.menu).to eq([sushi_menu, donburi_menu])
	end

	it 'can place orders' do
		expect(takeaway.place(my_order)).to eq(salmon_sashimi)
	end 

	it 'can check if it has placed any orders' do
		expect(takeaway.place(my_order)).to eq(salmon_sashimi)
		expect(takeaway).to have_orders
	end

	it 'can confirm the order by sending a text with delivery eta and deletes the order' do
		takeaway.stub(:send_text).and_return("Thanks for your order! It's on its way")
		expect(takeaway.place(my_order)).to eq(salmon_sashimi)
		expect(takeaway).to have_orders
		expect(takeaway.confirm(my_order)).to eq("Thanks for your order! It's on its way")
		salmon_sashimi = nil
		expect(takeaway).to_not have_orders
	end

	# it 'can raise an error if the order to confirm has not been placed' do
	# 	takeaway.stub(:send_text).and_return("Thanks for your order! It's on its way")
	# 	expect(takeaway).to_not have_orders
	# 	expect(takeaway.confirm(my_order)).to raise_error(RuntimeError)
	# end

end