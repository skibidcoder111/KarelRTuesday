valeurs = Array.new(200) { rand(0..100) }
puts valeurs
common_value = valeurs.max_by do |kjljlsjdf| 
	valeurs.count(kjljlsjdf)
end
puts "La valeur le plus commun est #{common_value}"
