
require "plane"
require "airport"


describe "Plane" do

 	context "using a new plane" do

 		let(:new_plane) {Plane.new}
 		
		it 'is flying when created' do
			expect(new_plane.flying?).to eq true
		end

		it 'status is "flying" when flying' do
			expect(new_plane.status).to eq "flying"
		end

		it "cannot take off if already flying" do
			expect{new_plane.take_off!}.to raise_error(RuntimeError)
		end


		it 'can take off and land multiple times' do
			expect(new_plane.land!.take_off!.land!.status).to eq "landed"
		end

	end

	context "using an already landed plane" do

		let(:landed_plane) {Plane.new.land!}

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

	end

end

#i think i need to reorder these tests
#they make sense but doesn't look beautiful


