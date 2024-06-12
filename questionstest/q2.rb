matrice = Array.new(200) { rand(1..100) }

puts "Donner moi une valeur entre un et cent: "
	valeur = gets.chomp.to_i

until valeur.between?(1, 100)
	puts "Cette valeur n'est pas entre un et cent"
	puts "Donner moi une valeur entre un et cent: "
	valeur = gets.chomp.to_i
end

superieur = 0
inferieur = 0
egal = 0 

matrice.each do |num|
	if num > valeur 
	  superieur += 1
	elsif 
		num < valeur 
		inferieur += 1
	else
		egal += 1
	end
end
	
puts "Il y a #{superieur} nombres superieur a #{valeur}."
puts "Il y a #{inferieur} nombres inferieur a #{valeur}."
puts "Il y a #{egal} nombres egal a #{valeur}."