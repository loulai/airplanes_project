# require "airplane"
require_relative '../lib/airplane'


describe "Plane" do

	let(:new_plane) {Plane.new}
	let(:landed_plane) {Plane.new.land!}

	it 'is flying when created' do
		expect(new_plane.flying?).to eq true
	end

	it 'status is "flying" when flying' do
		expect(new_plane.status).to eq "flying"
	end

	it "cannot take off if already flying" do
		expect{new_plane.take_off!}.to raise_error(RuntimeError)
	end

	it 'can land' do
		expect(landed_plane.flying?).to eq false
	end

	it 'cannot land if it is already landed' do
		expect{landed_plane.land!}.to raise_error(RuntimeError)
	end

	it 'status is "landed" when landed' do
		expect(landed_plane.status).to eq "landed"
	end

	it 'can take off' do
		expect(landed_plane.take_off!.flying?).to eq true
	end

	it 'can take off and land multiple times' do
		expect(new_plane.land!.take_off!.land!.status).to eq "landed"
	end



	






end

#i think i need to reorder these tests
#they make sense but doesn't look beautiful


#decided to land first because, well, 
#if it's made in the air then it must
#first LAND before it can TAKE OFF