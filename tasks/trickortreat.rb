require_relative "halloween.rb"
include SensorPack
include Turner

def task ()
	karel =Halloween.new(1, 1, Robota::EAST, 0)
	world = Robota::World
	world.read_world("../karel/tricktreat.rb")

	karel.sweeprue
	karel.move
	karel.reposition
	karel.sweeprue2
	karel.celebration
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