#1
@matrice1 = [43, 34, 6, 73, 7, 33, 73, 87, 443, 7, 32, 8, 442, 6, 2, 5, 0, 44, 3, 4, 342, 66, 554, 7, 56]
@matrice2 = [473, 7, 33, 4, 342, 66, 554, 7, 56, 73, 87, 443, 7, 32, 8, 4423, 34, 6, 9, 2, 5, 0, 44, 64, 3]

puts @matrice1.first

puts @matrice1[0]

#2
def sum(a,b)
	a + b
end

result = sum(@matrice1[1], @matrice2[10]

puts result

#3
result = sum(@matrice1.max, @matrice2.max)

puts result

#4
result = sum(@matrice1.min, @matrice2.min)

puts result 

#5
if @matrice1.min > @matrice2.min
	print "@matrice2.min est le plus petit valeur"
else
	print "@matrice1.min est le plus petit valeur"
end

#6

result = sum(@matrice1, @matrice2)
sorted_result = result.sort

puts sorted_result