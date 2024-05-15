require_relative "../karel/ur_robot"
require_relative "testmodule"

class Testq1classe < UrRobot
  	include Testmodule
  	def initialize (street, avenue, direction, beepers)
    	super(street, avenue, direction, beepers)
	 end
end