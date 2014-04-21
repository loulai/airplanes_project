class Airport

	MAX_CAPACITY	= 6

	def initialize(capacity = MAX_CAPACITY)
		@capacity    = capacity
		@airport_bay = []
	end

	def capacity
		@capacity
	end

	def capacity=(new_value)
		@capacity = new_value
	end

	def full?
		planes_count == MAX_CAPACITY
	end

	def park!(plane)
		raise "Airport is full" if full?
		@airport_bay << plane
	end

	def has_plane?
		@airport_bay.any?
	end

	def take_off!(plane)
		planes.delete(plane)
	end

	def planes
		@airport_bay
	end

	def planes_count
		@airport_bay.count
	end


end