require_relative "t10classe.rb"
require_relative "../karel/robota.rb"
def task 
    karel =T10classe.new(2, 2, Robota::EAST, 0)
	world = Robota::World
	world.read_world("../worlds/aleatoire.kwld")

 	loop do
  	  karel.sweep
  	  karel.cornerbeeper
  	  karel.reposition
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
