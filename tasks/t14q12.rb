#1
chiffres = [12, 5, 41, 98, 12, 80, 74, 22, 43, 55, 53, 40, 66, 58, 72, 99, 48, 46, 20, 94, 22, 79, 80, 59, 61, 84, 40, 18, 99, 63, 16, 15, 100, 26, 48, 9, 25, 19, 63, 100, 47, 48, 10, 27, 34, 34, 88, 40, 43, 74, 87, 36, 47, 52, 7, 37, 74, 77, 72, 80, 53, 64, 88, 97, 45, 100, 91, 32, 36, 57, 1, 3, 98, 9, 78, 39, 46, 87, 44, 28, 7, 92, 34, 92, 59, 51, 50, 19, 35, 41, 45, 98, 49, 46, 75, 80, 23, 21, 58, 54]

paires = []
impaires = []

chiffres.each do |x|
    if x.even?
        paires << x
    else 
        impaires << x
    end
end

puts "valeurs paires: #{paires}"
puts "valeurs impaires #{impaires}"

#2

chiffres = [12, 5, 41, 98, 12, 80, 74, 22, 43, 55, 53, 40, 66, 58, 72, 99, 48, 46, 20, 94, 22, 79, 80, 59, 61, 84, 40, 18, 99, 63, 16, 15, 100, 26, 48, 9, 25, 19, 63, 100, 47, 48, 10, 27, 34, 34, 88, 40, 43, 74, 87, 36, 47, 52, 7, 37, 74, 77, 72, 80, 53, 64, 88, 97, 45, 100, 91, 32, 36, 57, 1, 3, 98, 9, 78, 39, 46, 87, 44, 28, 7, 92, 34, 92, 59, 51, 50, 19, 35, 41, 45, 98, 49, 46, 75, 80, 23, 21, 58, 54]

paires = []
impaires = []

chiffres.each do |x|
    if x.even?
        paires << x
    else 
        impaires << x
    end
end

paires = paires.sort.reverse
impaires = impaires.sort.reverse

puts "valeurs paires: #{paires}"
puts "valeurs impaires #{impaires}"
