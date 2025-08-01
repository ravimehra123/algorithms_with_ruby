
# Brute force for string matching

def string_match(text, pattern)
	n = text.length
	m = pattern.length
	(0...(n-m)).each do |i|
		j = 0
		while j < m && text[i+j] == pattern[j]
			j+=1
		end
		return i if j == m 
	end	

	return -1
end	
