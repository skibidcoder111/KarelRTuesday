require_relative "../karel/robot.rb"

	def task ()
		karel =Robot.new(1, 1, Robota::EAST, 0)
		karel.move
		karel.move
		karel.turn_left
		karel.move
		karel.move
	end





if __FILE__ == $0
  if $graphical
     screen = window(8, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end
