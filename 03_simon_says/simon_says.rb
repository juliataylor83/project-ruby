def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, number = 2)
	output = ""
	number.times do
		output += string + " "
	end
	output.strip
end

def start_of_word(string, length)
	string[0..length-1]
end

def first_word(string)
	string.split.first
end

def titleize(string)
	output = string.split
	output.each do |word|
		if (word == "and") || (word == "or") || (word == "over") || (word == "the") ||
			(word == "if") || (word == "but") || (word == "a")
		else
			word.capitalize!
		end
	end
	output[0].capitalize!
	output.join(" ")
end