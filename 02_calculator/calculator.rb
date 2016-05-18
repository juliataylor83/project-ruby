def add(x, y)
	x + y
end

def subtract(a, b)
	a - b
end

def sum(array)
	if array.length > 0
		result = 0
		array.each do |x|
			result += x
		end
		return result
	else
		0
	end
end