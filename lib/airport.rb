require_relative './weather'

class Airport

	include Weather

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
		raise "You can not land due to weather conditions !!!" unless sunny?
		raise "Airport is full" if full?
		planes << plane
		plane.land!		
	end

	def has_plane?
		@airport_bay.any?
	end

	def dispatch!(plane)
		raise "Cannot take off due to weather conditions!" unless sunny?
		planes.delete(plane)
		plane.take_off!
	end

	def planes
		@airport_bay
	end

	def planes_count
		@airport_bay.count
	end

end

