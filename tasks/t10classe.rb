require_relative "../karel/ur_robot.rb"
require_relative "sensor_pack.rb"
require_relative "../mixins/turner"

class T10classe < UrRobot
    include SensorPack
    include Turner
    def sweep
        while front_is_clear?
            if next_to_a_beeper?
                pick_beeper
            end
            move
        end
    end

    def reposition
        if facing_east?
            turn_left
            if !front_is_clear?
                turn_off
            end
            move
            turn_left
        else
            turn_right
            if !front_is_clear?
                turn_off
            end
            move
            turn_right
        end
    end
    def cornerbeeper
        if facing_east?
            turn_right
            if !front_is_clear?
                turn_around
               if !front_is_clear?
                  put_beeper
                  turn_right
               else
                  turn_right
               end
            else
             turn_left
            end
        else
            turn_left
            if !front_is_clear?
                turn_around
              if !front_is_clear?
                  put_beeper
                  turn_left
              else
                  turn_left
               end
            else
             turn_right
            end
        end
    end
end

    