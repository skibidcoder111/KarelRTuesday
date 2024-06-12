def average(array)
	array.sum / array.length.to_f
end

grades = [100, 79, 87, 91, 88]

print average(grades)