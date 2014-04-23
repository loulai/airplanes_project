#if it's relative you don't need the ./
require_relative 'weather'

class Airport

	include Weather

	MAX_CAPACITY	= 6

	def initialize(capacity = MAX_CAPACITY)
		@capacity    = capacity
		@airport_bay = []
	end
	
	attr_accessor :capacity

	def full?
		planes_count == MAX_CAPACITY
	end

	# using the bang convention in this instance is incorrect.
	# the bang is used to indiciate, by convention, that you are changing the state of the airport
	# when you land a plane you are not changing the state of the airport,
	# whilst it does have more planes you're not changing the fact the airport
	# contains planes.
	def park!(plane)
		raise "You cannot park due to weather conditions !!!" if stormy?
		raise "Airport is full" if full?
		# what if the plane does not land
		# shouldn't it be in the @airport_bay after it has landed?
		# if the plane is flying shouldn't this be a guard clause like full and stormy

		 plane.land!

		 @airport_bay << plane
	end

	def has_plane?
		@airport_bay.any?
	end

	def dispatch!(plane)
		raise "Cannot take off due to weather conditions!" unless sunny?
		# what it the plane fails to take of?
		@airport_bay.delete(plane)
		plane.take_off!
	end

	def airport_bay
		@airport_bay
	end

	def planes_count
		@airport_bay.count
	end

	def grand_dispatch!
		# shoo all wtf!!
		# the lamb (or lambda) is not reused, it is more idomatic to just do
		# airport_bay.each {|plane| dispatch!(plane)}
		# airport_bay.each { |each_plane| take_off!(each_plane) }
		while has_plane?
			dispatch!(airport_bay.first)
		end
	end

end


# def capacity
	# 	@capacity
	# end

	# def capacity=(capa)
	# 	@capacity = new_value
	# end
