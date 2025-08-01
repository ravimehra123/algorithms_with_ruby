def count_combinations(x, n, current_sum = 0, current_numbers = [], start_num = 1)
  return 1 if current_sum == x       # found a valid combination
  return 0 if current_sum > x        # overshot the target

  count = 0
  max_base = (x ** (1.0 / n)).to_i + 1   # same upper bound logic as Python
  (start_num..max_base).each do |i|
    count += count_combinations(
      x,
      n,
      current_sum + i**n,          # add i^n to running sum
      current_numbers + [i],       # keep the chosen numbers (for tracing)
      i + 1                        # ensure uniqueness: next base must be larger
    )
  end
  count
end

#count(5, 2, sum=0, start=1)
#├─ i = 1  -> count(sum=1, start=2)
#│   ├─ i = 2  -> count(sum=5, start=3)  ✔ (returns 1)
#│   └─ i = 3  -> count(sum=10)          ✘ (backtrack, returns 0)
#└─ i = 2  -> count(sum=4, start=3)
#    └─ i = 3  -> count(sum=13)          ✘ (backtrack, returns 0)
#✔ leaf: sum == x → contributes 1 to the total.

#✘ leaf: sum > x → contributes 0.
