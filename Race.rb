#my attempt
#setting up the class
class Race 
#defining the cars
attr_reader :cars
	#initializing for the cars to be stored in an array 
	def initialize
		@cars = []
	end
	#defining the winner and sorting them by speed 
	def winner
		@cars.sort_by(&:speed)
	end

module Race

	def initialize 
		speed = 0 
	end
	#defining the acceleration to increase
	def accelerate(increase)
		@speed += increase
	end
	#want the race to when it starts to create a new car
	def race 
		@cars << Car.new
		@cars.first.accelerate
	end
end 


#call the instance
race = Race.new
race.winner
# => <Car ...>
race.loser
# => <Car ...>

#class solution 
require_relative 'car'

class Race
	attr_reader :cars

	def initialize
		@cars = []
		go!
	end

	def winner
		@cars.sort_by(&:speed).last
	end

	def loser
		@cars.sort_by(&:speed).first
	end

private
	def random_speed
		(rand * 100).round
	end

	def go!
		@cars << Car.new
		@cars << Car.new

		@cars.first.accelerate(random_speed)
		@cars.last.accelerate(random_speed)
	end
end