require_relative "tcinq_robot.rb"


def task()
 karel =TcinqRobot.new(1, 1, Robota::NORTH, 25) 
 karel.move_beeper
 karel.turn_right
 karel.move
 karel.turn_right
 karel.move_beeper
 karel.turn_left
 karel.move
 karel.turn_left
 karel.move_beeper
 karel.turn_right
 karel.move
 karel.turn_right
 karel.move_beeper
 karel.turn_left
 karel.move
 karel.turn_left
 karel.move_beeper


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


