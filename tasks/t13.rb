matrice = [364, 204, 165, 391, 170, 180, 1, 5, 225, 31, 309, 461, 166, 50, 53, 71, 235, 198, 28, 231, 16, 80, 497, 317, 497, 280, 261, 52, 57, 
364, 206, 101, 72, 152, 361, 81, 3, 22, 256, 409, 54, 18, 112, 162, 495, 51, 287, 63, 241, 417, 244, 306, 218, 293, 151, 499, 78, 458, 12, 342, 
497, 331, 273, 370, 418, 382, 79, 119, 132, 286]

hachage = {"val0"=>55, "val1"=>323, "val2"=>38, "val3"=>99, "val4"=>64, "val5"=>75, "val6"=>32, "val7"=>53, "val8"=>7, "val9"=>1 }



#1 
valeur_max = matrice.max
puts "La valeur maximum est #{valeur_max}"
#2
nombres_elements = matrice.length
puts "il y a #{nombres_elements} elements dans la matrice."
#3
hachage.has_value?(6)
#4
hachage.has_key?("val7")
#5
somme = hachage["val4"] + hachage["val9"]
puts somme