#Generate all strings of length n using digits from 0 to k - 1, and print them.
#Sample input n=2, k=2
#Output: 
#['00','01', '10', '11']

def k_string(n,k,arr=[])	
	if (n==0)
		puts arr.join
	else
		(0...k).each do |j|
			k_string(n-1, k, arr + [j])
		end
	end	
end

#Initial call: n = 2, k = 2, arr = []

#1st Level:
#j = 0 → call k_string(1, 2, [0])

#	j = 0 → call k_string(0, 2, [0, 0]) → print "00"

#	j = 1 → call k_string(0, 2, [0, 1]) → print "01"

#j = 1 → call k_string(1, 2, [1])

#	j = 0 → call k_string(0, 2, [1, 0]) → print "10"

#	j = 1 → call k_string(0, 2, [1, 1]) → print "11"
