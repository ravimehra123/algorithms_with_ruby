class Integer
	
	def lcm(a, b)
		puts (a/gcd(a, b)) * b
		
	end
	def gcd(u, v)
		u, v = u.abs, v.abs
			while v > 0
				u, v = v, u % v
			end
			
		u
	end
end

div = Interger.new.lcm(50,10)