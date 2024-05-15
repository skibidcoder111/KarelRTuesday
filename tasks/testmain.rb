require_relative "testq1classe"
require_relative "testmodule"

def task ()
	karel =Testq1classe.new(1, 6, Robota::EAST, 27)
	karel.put_beeper
	karel.move
	karel.move
	karel.move
	karel.turn_left
	karel.move
	karel.turn_left
	karel.put7beepers
	karel.turn_right
	karel.move
	karel.turn_right
	karel.move
	karel.put5beepers
	karel.turn_left
	karel.move
	karel.turn_left
	karel.move
	karel.put3beepers
	karel.turn_right
	karel.move
	karel.turn_right
	karel.put3beepers
	karel.turn_left
	karel.move
	karel.turn_left
	karel.put3beepers
	karel.turn_right
	karel.move
	karel.turn_right
	karel.put3beepers
	karel.turn_left
	karel.move
	karel.turn_left
	karel.move
	karel.put_beeper
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
