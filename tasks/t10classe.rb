require_relative "../karel/ur_robot.rb"
require_relative "sensorpack.rb"
require_relative "../mixins/turner"

class T11classe < UrRobot
    def sweep
        while front_is_clear?
            if next_to_a_beeper?
                pick_beeper
            end
            move
        end
    end

    def reposition
        if facing_east
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
        if facing_east
            turn_right
            unless front_is_clear?
                put_beeper
            end
            turn_around
            unless front_is_clear?
                put_beeper
            end
            turn_right
        else
            turn_left
            unless front_is_clear?
                put_beeper
            end
            turn_around
            unless front_is_clear?
                put_beeper
            end
            turn_left
        end

    end
end

    