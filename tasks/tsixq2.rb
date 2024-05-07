require_relative "utilities"
require_relative "tcinq_robot"


def task ()
	karel =TcinqRobot.new(1, 6, Robota::NORTH, 0)
	world = Robota::World
	world.read_world("../karel/jardin.rb")

	karel.turn_right
	karel.sweeper_east
  karel.reposition_east
  karel.sweeper_west
  karel.reposition_west
  karel.sweeper_east
  karel.reposition_east
  karel.sweeper_west
  karel.reposition_west
  karel.sweeper_east
  karel.reposition_east
  karel.sweeper_west
  karel.reposition_west
  karel.sweeper_east
  karel.reposition_east
  karel.sweeper_west
end

if __FILE__ == $0
    if $graphical
      screen = window(10, 40)
      screen.run do
          task
      end
    else
     task
    end 
end 