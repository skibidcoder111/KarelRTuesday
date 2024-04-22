#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class TcinqRobot < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  
def move_beeper()
  put_beeper
  move
  put_beeper
  move
  put_beeper
  move
  put_beeper
  move
  put_beeper
end


  
  # The standard task for this class of robots
 def run_task
    move_beeper
  end

end