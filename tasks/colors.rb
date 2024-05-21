require_relative "../karel/ur_robot"
require_relative "../mixins/turner"

class Colors < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers, color)
    super(street, avenue, direction, beepers, color)
  end

  def start
  	 5.times {move}
  	 put_beeper
     turn_right
  end

  def transport
     pick_beeper
  	 5.times {move}
     put_beeper
     turn_right
  end
end
