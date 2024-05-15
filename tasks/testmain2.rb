require_relative "testq1classe"
require_relative "testmodule"

def task ()
	karel =Testq1classe.new(12, 4, Robota::EAST, 0)
	world = Robota::World
	world.read_world("../worlds/grinch.kwld")

	karel.sweepchimney
	karel.move3
	karel.sweepchimney
	karel.move3
	karel.sweepchimney
	karel.move
	karel.turn_right
	karel.move3
	karel.move3
	karel.turn_left
	karel.back_up
	karel.sweepchimney
	karel.backup3
	karel.sweepchimney
	karel.backup3
	karel.sweepchimney
	karel.move3
	karel.move3
	karel.move
	karel.turn_right
	karel.move3
	karel.turn_left
	karel.move
	karel.turn_right
	karel.move
	karel.move
	karel.put24beepers
end


if __FILE__ == $0
    if $graphical
      screen = window(15, 40)
      screen.run do
          task
      end
    else
     task
    end 
end 