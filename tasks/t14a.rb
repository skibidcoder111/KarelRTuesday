require_relative "../karel/ur_robot.rb"


module Actionmulti
    def perform_action(action, times = 1)
      times.times { send(action) }
    end
  end
  
  class Robot < UrRobot
    include Actionmulti
  
    def move(distance = 1)
      perform_action(:move, distance)
    end
  
    def pick_beeper(quantity = 1)
        quantity = 1 if quantity.nil?
      perform_action(:pick_beeper, quantity)
    end
  
    def put_beeper(quantity = 1)
        quantity = 1 if quantity.nil?
      perform_action(:put_beeper, quantity)
    end
  end
  