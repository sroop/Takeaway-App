require 'takeaway'

describe 'Takeaway' do

	let(:sushi_menu) { double :menu }
	let(:donburi_menu) { double :menu }
	let(:takeaway) { Takeaway.new([sushi_menu]) }

	it 'has a menu' do
		expect(takeaway.menu).to eq([sushi_menu])
	end

	it 'can add more menus' do
		expect(takeaway.menu).to eq([sushi_menu])
		takeaway.add(donburi_menu)
		expect(takeaway.menu).to eq([sushi_menu, donburi_menu])
	end


end