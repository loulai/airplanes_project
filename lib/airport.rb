class Airport

	def initialize(something = [])
		@airport_bay = something
	end

	def park!
	end

	def has_plane?
		@airport_bay.any?
	end


end