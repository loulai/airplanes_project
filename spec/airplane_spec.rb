require "airplane"

describe "Plane" do

	it 'has a flying status when created' do
		expect(Plane.new.status?).to eq "flying"
	end

	it 'can land' do
		landed_plane = Plane.new.land!
		expect(landed_plane.status?).to eq "landed"
	end





end