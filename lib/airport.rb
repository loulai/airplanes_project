class Airport

	def initialize(something = [])
		@airport_bay = something
	end

	def park!(plane)
		@airport_bay << plane
		@airport_bay
	end

	def has_plane?
		@airport_bay.any?
	end

	def take_off!(n)
		@airport_bay.drop(n)
	end




end