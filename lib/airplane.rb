class Plane 

	def initialize
		@flying = true
	end

	def flying?
		@flying
	end

	def status?
		if @flying == true
			return "flying"
		end
	end

	def land! 
		@flying = false
		self
	end

	#attr_accessor :flying

	# def flying
	# 	@flying
	# end

	# def flying=(flying)
	# 	@flying = flying
	# end


end