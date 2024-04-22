require_relative "tcinq_robot.rb"


def task()
 karel =TcinqRobot.new(3, 3, Robota::NORTH, 5) 
 karel.move_beeper 
end

if __FILE__ == $0
  	if $graphical
     	screen = window(8, 40) 
     	screen.run do
       		task
    	end
   	else
     task
    end 
end 


