def task ()
	karel=TcinqRobot.new(2, 6, Robota::North, 0)
	world = Robota::World
	world.read_world("t7monde.rb")
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