require "airplane"

describe "Plane" do

	let(:new_plane) {Plane.new}
	let(:landed_plane) {Plane.new.land!}

	it 'is flying when created' do
		expect(Plane.new.flying?).to be_true
	end

	it 'has status "flying" when flying' do
		expect(new_plane.status?).to eq "flying"
	end

	it 'can land' do
		expect(landed_plane.flying?).to be_false
	end

	it 'has status "landed" when landed' do
	end








	






end




#decided to land first because, well, 
#if it's made in the air then it must
#first LAND before it can TAKE OFF