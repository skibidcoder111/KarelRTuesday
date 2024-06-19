require_relative "sensor_pack.rb"
require_relative "../karel/ur_robot.rb"
require_relative "../mixins/turner.rb"

class TFinaleRobot < UrRobot 

 include Turner
 include SensorPack

 	def sweep_row
 		12.times do 
  	 		while next_to_a_beeper?
       			pick_beeper
     		end
    		move
   		end
    end

    def reposition_sweep
 		if facing_east?
 			turn_left
    		move
            turn_left
 		else
  			turn_right
  			move
  			turn_right
  		end
  	end

	def return
  		turn_around
  		12.times { move }
  		turn_left
  		12.times { move }
  		turn_around
    end

    def build_columns
    	puts "Enter the number of columns: "
 		columns = gets.chomp.to_i
 		counter = 1
 		columns.times do 
  			counter.times do
   				if any_beepers_in_beeper_bag?
    				put_beeper
   				end
  	    		move
  		    end
  			turn_right
  			move
 		    turn_right
  			counter.times { move }
 			turn_around
 			counter += 1
		end
		turn_left 
		columns.times { move }
		turn_right
	end
end