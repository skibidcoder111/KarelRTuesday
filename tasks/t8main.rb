require_relative "../karel/robot.rb"

class DeuxBlocRobot < Robot 
	def task ()
		karel =DeuxBlocRobot.new(1, 1, Robota::East, 0)
		karel.move
		karel.turn_left
		karel.move
		karel.turn_right
		karel.move
		karel.turn_left
		karel.move
	end
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
