def convertir(secondes)
	heures = secondes / 3600.to_i
	minutes = (secondes % 3600) / 60.to_i
	secondes = secondes % 60.to_i
	return heures, minutes, secondes
end

secondes = 0

while secondes == 0
	print "Entres les secondes: "
	secondes = gets.chomp.to_i
end

heures, minutes, secondes_restantes = convertir(secondes)

puts "#{secondes} secondes équivaut à #{heures} heures, #{minutes} minutes et #{secondes_restantes} secondes."