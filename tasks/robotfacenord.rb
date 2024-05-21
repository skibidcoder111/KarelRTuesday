require_relative "../karel/ur_robot"
require_relative "../mixins/turner"

class RobotFaceNord < UrRobot
  include Turner
  def initialize (street, avenue, beepers)
    super(street, avenue, Robota::NORTH, beepers)
  end

  def return ()
  		turn_around
  		4.times {move}
  		turn_right
  		4.times {move}
  end
end