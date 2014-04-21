require "airport"

describe "Airport" do 

	it 'has no planes when first created' do
		expect(Airport.new).not_to have_plane
	end

	it 'can park a plane' do
		expect(Airport.new).to respond_to(:park!)
	end

	it 'has one plane after one plane has parked' do
		


		# my_plane = double :plane
		# my_airport = Airport.new
		# expect(my_airport).to be_empty
		# my_airport.grab(my_plane)
		# expect(my_airport.planes_count).to eq 1
	end



		
	
end