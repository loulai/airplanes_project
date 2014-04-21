require "airport"

describe "Airport" do 

	let (:airport) {Airport.new}

	context 'taking off and parking' do

		it 'has no planes when first created' do
			expect(airport).not_to have_plane
		end

		it 'can park a plane' do
			expect(airport).to respond_to(:park!)
		end

		it 'has one plane after one plane has parked' do
			fake_plane = double :plane
			airport.park!(fake_plane)
			expect(airport.planes_count).to eq 1
		end

		it 'has zero planes after one plane has taken off' do
			fake_plane = double :plane
			airport.park!(fake_plane)
			airport.take_off!(fake_plane)
			expect(airport.planes_count).to eq 0
		end

	context 'traffic control' do

			it "knows when it's full (the max capacity has been reached)" do
				airport.capacity.times { airport.park!(:plane) }
				expect(airport).to be_full
			end
		
			it 'a plane cannot land if the airport is full' do
				airport.capacity.times { airport.park!(:plane) }
				expect(lambda {airport.park!(:plane)}).to raise_error(RuntimeError)
			end

	end


		# my_plane = double :plane
		# my_airport = Airport.new
		# expect(my_airport).to be_empty
		# my_airport.grab(my_plane)
		# expect(my_airport.planes_count).to eq 1

		# it 'has two planes after another plane has parked' do
		# 	fake_plane = double :plane
		# 	airport_with_one_plane = Airport.new([fake_plane])
		# 	expect(airport_with_one_plane.park!(fake_plane).count).to eq 2
		# end

		# it 'has n less plane(s) after n plane(s) has taken off' do
		# 	fake_plane = double :plane
		# 	airport_with_one_plane = Airport.new([fake_plane, fake_plane, fake_plane])
		# expect(airport_with_one_plane.take_off!(2).count).to eq 1




		
	
end

#("") is duck typing