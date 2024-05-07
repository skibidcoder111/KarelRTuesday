require_relative "utilities"
require_relative "tcinq_robot"


def task ()
	karel =TcinqRobot.new(2, 5, Robota::WEST, 10)
	karel.put_beeper
  karel.reposition
  karel.put_beeper2
  karel.reposition
  karel.put_beeper3
  karel.reposition
  karel.put_beeper4
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