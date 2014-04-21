class Plane 

	def initialize
		@flying = true
	end

	def flying?
		@flying
	end

	def status
		
		if @flying == true
			return "flying"

		else
			"landed"
		end
	end

	def land! 
		raise "You've already landed, you moron." unless flying?
		@flying = false
		self
	end

	def take_off!
		@flying = true
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