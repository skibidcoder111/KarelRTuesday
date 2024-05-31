require_relative "sensor_pack.rb"
require_relative "../karel/ur_robot"
require_relative "../mixins/turner"

class Rectangle < UrRobot
  include Turner
  include SensorPack

  def initialize(street, avenue, direction)
    super(street, avenue, direction, Float::INFINITY)
  end

  def sweep
    while front_is_clear?
      if next_to_a_beeper?
        pick_beeper
      else
        put_beeper
      end
      move
    end
  end

 def facewallnorth
   if !front_is_clear? 
     if facing_north?
       if next_to_a_beeper?
        pick_beeper
       else
        put_beeper
       end
       turn_right
       move
       turn_right
     end
   end
 end

  def facewallsouth
   if !front_is_clear?
     if facing_south?
       if next_to_a_beeper?
         pick_beeper
       else
         put_beeper
       end
       turn_left
       if !front_is_clear?
         turn_around
         17.times { move }
         turn_right
       else
         move
         turn_left
       end
      end
    end
  end
end