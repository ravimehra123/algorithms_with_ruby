# Rabin Karp

def rabin_karp(text, pattern, d=256, q=101)
	n = text.length
	m = pattern.length
	h = 1

  	(m - 1).times { h = (h * d) % q }

	text_hash = 0
	pattern_hash = 0
	result = []

	m.times do |i|
		text_hash = (d*text_hash + text[i].ord) % q
		pattern_hash = (d*pattern_hash + pattern[i].ord) % q
	end
	

	(n-m+1).times do |i|
		if text_hash == pattern_hash
			if text[i...i + m] == pattern
        		result << i
      		end
      	end	

      	if i < n-m
      		text_hash = (d * (text_hash - text[i].ord * h) + text[i + m].ord) % q
      		text_hash += q if text_hash < 0
      	end
    end
    
    result
end
