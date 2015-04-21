#defining the class
class Car
	#only one attribute - speed
	attr_accessor :speed
	#initialize and define the speed starting at 0
	def initialize 
		speed = 0 
	end
	#defining the acceleration to increase
	def accelerate(increase)
		@speed += increase
	end
end