require_relative "../karel/ur_robot.rb"
require_relative "../mixins/turner.rb"
require_relative "utilities.rb"


class Lettre < UrRobot
	include Turner
	include Utilities
end
class LettreH < Lettre
	def ecrit_lettre
		put5_beepers
		turn_around
		2.times {move}
		turn_left
		move
		put3_beepers
		turn_left
		2.times {move}
		turn_around
		put5_beepers
	end
end

class LettreE < Lettre
	def ecrit_lettre
		put5_beepers
		turn_right
		eprongs
	    2.times do
		 2.times {move}
		 turn_left
		 eprongs
		end
	end
end

class LettreL < Lettre
	def ecrit_lettre
		put5_beepers
		turn_around
		4.times {move}
		turn_left
		eprongs
	end
end
class LettreO < Lettre
	def ecrit_lettre
		put5_beepers
		turn_right
		3.times do
			move
			put_beeper 
		end
		turn_right
		put5_beepers
		turn_right
		3.times do
			move
			put_beeper
		end
	end
end

