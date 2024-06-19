require_relative "t_finale_robot.rb"
include SensorPack
include Turner

def task ()
	karel =TFinaleRobot.new(1, 1, Robota::EAST, 0)
	world = Robota::World
	world.read_world("../worlds/tache_finale_b.kwld")

	12.times do 
	 karel.sweep_row
	 karel.reposition_sweep
	end
	karel.sweep_row
	karel.return

 	karel.build_columns
end

if __FILE__ == $0
    if $graphical
      screen = window(13, 40)
      screen.run do
          task
      end
    else
     task
    end 
end 