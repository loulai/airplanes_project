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
		raise "Silly pilot, why are you trying to take off when you're already flying?" if flying?
		@flying = true
		self
	end

end