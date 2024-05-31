require_relative "rectangle.rb"
include SensorPack
include Turner
def task ()
 karel =Rectangle.new(2, 2, Robota::NORTH,)
	world = Robota::World
	world.read_world("../karel/rectangle.kwld")
    
    karel.put_beeper
	loop do
		karel.sweep
		karel.facewallnorth
		karel.facewallsouth
	end
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
 