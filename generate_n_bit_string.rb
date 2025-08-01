#Generate all strings of n bits.
#Giving input: 2
#Output = ['00', '01', '10', '11'].


def generate_n_bit_strings(n)
  return [''] if n == 0

  smaller = generate_n_bit_strings(n - 1)
  result = []

  smaller.each do |s|
    result << "0#{s}"
    result << "1#{s}"
  end

  result
end

#generate_n_bit_strings(2)
#  └── calls generate_n_bit_strings(1)
#        └── calls generate_n_bit_strings(0)
#              └── returns ['']
#        └── smaller = ['']
#        └── result = ['0', '1']
#        └── returns ['0', '1']
#  └── smaller = ['0', '1']
#  └── result = ['00', '10', '01', '11']
#  └── returns ['00', '10', '01', '11']
