class Plane 

	def initialize
		@status = "flying"
	end

	def status?
		@status
	end

	def land! 
		@status = "landed"
		self #need otherwise will just return the string "landed"
	end


end