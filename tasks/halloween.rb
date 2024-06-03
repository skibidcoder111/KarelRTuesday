require_relative "sensor_pack.rb"
require_relative "../karel/ur_robot"
require_relative "../mixins/turner"

class Halloween < UrRobot
  include Turner
  include SensorPack
  # Karel va trick or treating mais il est un peut gentil, il prend tous les bonbons du bowl et laisse un pour la prochaine personne. Si il n'y a pas 
  # de bonbons dans le bowl Karel va mettre un dans so sac de bonbons pour un autre enfant. 

  	def getcandy
  	 2.times {move}
  	 	if next_to_a_beeper?
  	 		while next_to_a_beeper?
  	 		 pick_beeper
      	 	end
      	  put_beeper
      	else
      	 put_beeper
      	end

      turn_around
      2.times {move}
    end
 #Karel va faire toute la premiere rue et va repositioner pour faire la deuxieme rue.
    def sweeprue
     	9.times do 
      		move 
      		turn_left
      		getcandy
      		turn_left
      	end
    end

    def sweeprue2
     	10.times do 
      		move 
      		turn_left
      		getcandy
      		turn_left
      	end
    end
    
    def reposition
    	turn_left
    	4.times {move}
    	turn_left
    	10.times {move}
    	turn_around
    end

 #Le sac de karel est maintenant plein de bonbons il y en a laisser pour les autres enfants. il fait un petit danse de celebration pour toujours!
 #La Fin!
    def celebration
    	loop do 
    		move 
    		turn_right
    	end
    end
end

