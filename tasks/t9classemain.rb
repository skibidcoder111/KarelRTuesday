require_relative "t9classe.rb"

$graphical = true

class Gerant
	def task
		karel =LettreH.new(3, 2, Robota::NORTH, 20)
		karel.ecrit_lettre
		

		karel2 =LettreE.new(3, 7, Robota::NORTH, 20)
		karel2.ecrit_lettre
		


		karel3 =LettreL.new(3, 11, Robota::NORTH, 20)
		karel3.ecrit_lettre		
		


		karel4 =LettreL.new(3, 15, Robota::NORTH, 20)
		karel4.ecrit_lettre
		


		karel5 =LettreO.new(3, 19, Robota::NORTH, 20)
		karel5.ecrit_lettre		
		

	end
end


if __FILE__ == $0
    if $graphical
      screen = window(30, 40)
      screen.run do
          gerant =Gerant.new
		world = Robota::World
		gerant.task
      end
    else
     task
    end 
end

