require_relative "sensor_pack"
require_relative "../mixins/turner"

include SensorPack



	module Utilities
		def put_beeper2 ()
			put_beeper
			move
			move
			put_beeper
			turn_around
			2.times { move }
  		end

		def put_beeper3 ()
			put_beeper
			move
			move
			put_beeper
			move
			move
			put_beeper
			turn_around
			4.times { move } 
		end	

		def put_beeper4 ()
			put_beeper
			move
			move
			put_beeper
			move
			move
			put_beeper
			move
			move
			put_beeper
			turn_around
			6.times { move }
		end

		def reposition ()
			turn_right
			move
			turn_left
			move 
			turn_around
		end

		def sweeper_east ()
			while front_is_clear?
				move
				if next_to_a_beeper?
					pick_beeper
				end
			end
		end


		def reposition_east ()
			if facing_east?
				turn_left
				move
				turn_left
			end
		end

		def sweeper_west ()
			while front_is_clear?
				if next_to_a_beeper?
					pick_beeper
				end
				move
			end
        end

        def reposition_west ()
        	if facing_west?
        		turn_right
        		move
        		turn_right
        	end
        end
	
        def put5_beepers
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
		
		def put3_beepers
			put_beeper
			move
			put_beeper
			move
			put_beeper
		end

		def eprongs
			move
			put_beeper
			move
			put_beeper
			turn_around
			2.times {move}
			turn_left
		end
	end






