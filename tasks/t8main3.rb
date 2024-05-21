require_relative "colors.rb"

def task () 
	karel =Colors.new(1, 1, Robota::NORTH, 1, :red)
	karel2 =Colors.new(6, 1, Robota::EAST, 0, :green)
	karel3 =Colors.new(6, 6, Robota::SOUTH, 0, :yellow)
	karel4 =Colors.new(1, 6, Robota::WEST, 0, :green)
	karel5 =Colors.new(1, 1, Robota::NORTH, 0, :blue)
 
	karel.start
	karel2.transport
	karel3.transport
	karel4.transport
	karel5.transport
   3.times do  
	  karel.transport
	  karel2.transport
	  karel3.transport
	  karel4.transport
	  karel5.transport
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





