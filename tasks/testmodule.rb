require_relative "../mixins/turner"

include Turner
	module Testmodule
		def put7beepers ()
			put_beeper
			move
			put_beeper
			move
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

		def put5beepers ()
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

		def put3beepers ()
			put_beeper
			move 
			put_beeper
			move
			put_beeper
		end
	 
	 	def sweepchimney
	 		turn_right
	 		move
	 		move
	 		turn_right
	 		move
	 		turn_left
	 		move
	 		move
	 		pick_beeper
	 		pick_beeper
	 		turn_right
	 		move
	 		pick_beeper
	 		pick_beeper
	 		turn_around
	 		move
	 		turn_left
	 		move
	 		move
	 		turn_right
	 		move
	 		turn_left
	 		move
	 		move
	 		turn_right

	 	end

	 	def put24beepers
	 		put3beepers
	 		put3beepers
	 		put3beepers
	 		put3beepers
	 		put3beepers
	 		put3beepers
	 		put3beepers
	 		put3beepers
	 	end

	 	def move3
	 		move
	 		move
	 		move	
	 	end

	 	def backup3
	 		back_up
	 		back_up
	 		back_up
	 	end
	 end
