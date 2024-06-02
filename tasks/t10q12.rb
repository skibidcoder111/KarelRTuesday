require_relative "../karel/ur_robot.rb"

class Ifmove < UrRobot
    def move 
        if front_is_clear?
            super
        end
    end
end


class Unlessmove < UrRobot
    def move
        unless !front_is_clear?
            super
        end
    end
end
