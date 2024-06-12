noms = ["Alice", "Bob", "Charlie", "David", "Emma", "Frank", "Grace", "Henry", "Ivy", "Jack", "Kate", "Liam", "Mia", 
	"Noah", "Olivia", "Peter", "Quinn", "Rachel", "Sam", "Tina"]
loop do
	puts "Quelle est ton nom: "
		
	nom = gets.chomp

	if nom == "q"
		puts "exiting..."
		break
	end

	if noms.include?(nom)
		puts "#{nom} est present"
	else
		puts "#{nom} est absent"
	end
end
	