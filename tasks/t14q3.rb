require_relative "../karel/ur_robot.rb"

class T14q3 < UrRobot
    def execute(commands)
        commands.each do |command|
            send(command)
        end
    end
end

commandes = %w[move move move move move move move turn_left turn_left turn_left move move move put_beeper]

def task ()
    karel =T14q3.new(1, 1, Robota::NORTH, 1)
    karel.execute(commandes)
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



