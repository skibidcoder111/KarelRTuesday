require_relative "t11classe.rb"
require_relative "../karel/robota.rb"
def task 
    karel =T11classe.new(2, 2, Robota::EAST, 0)
	world = Robota::World
	world.read_world("../worlds/aleatoire.kwld")

    karel.sweep
    karel.reposition
end
    
