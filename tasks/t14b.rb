require_relative "../karel/ur_robot.rb"
require_relative "../mixins/turner.rb"
require_relative "sensor_pack.rb"

class Labyrinthe < UrRobot
  include SensorPack
  include Turner
  
  	def right_is_clear?
  	  turn_right
  	  clear = front_is_clear?
  	  turn_left
  	  clear
	end

	def follow_right_wall
 	   until next_to_a_beeper?
    		if right_is_clear?
     		 turn_right
     		  move
   		    elsif front_is_clear?
      		 move
   		    else
     		 turn_left
   		    end
 	   end
   end
end

def task 
    karel =Labyrinthe.new(19, 2, Robota::SOUTH, 0)
	world = Robota::World
	world.read_world("../worlds/labyrinthe.kwld")
	karel.follow_right_wall
end
    
if __FILE__ == $0
  if $graphical
     screen = window(20, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end
