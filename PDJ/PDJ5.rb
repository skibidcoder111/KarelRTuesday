valeurs = Array.new(200) { rand(0..100) }
somme_des_nombres_pairs = valeurs.select(&:even?).sum
puts somme_des_nombres_pairs