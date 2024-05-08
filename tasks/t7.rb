require_relative "tcinq_robot"

def task ()
	karel=TcinqRobot.new(2, 6, Robota::NORTH, 0)
	world = Robota::World
	world.read_world("../karel/t7monde.rb")

  karel.turn_right
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