require 'takeaway'

describe 'Takeaway' do
	
	let(:sushi_menu) { double :menu }
	let(:takeaway) { Takeaway.new([sushi_menu]) }

	it 'has a menu' do
		expect(takeaway.menu).to eq([sushi_menu])
	end


end