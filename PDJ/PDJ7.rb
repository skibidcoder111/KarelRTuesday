valeurs = array = (1..100).to_a
valeurs.delete(rand(0..99))

#formule pour la somme d'une serie arithmetic ou n (nombre de termes) dans ce cas est 100
somme_totale = 100 * (100 + 1) / 2

val_manquante = somme_totale - valeurs.sum

puts "La valeur manquante est #{val_manquante}"