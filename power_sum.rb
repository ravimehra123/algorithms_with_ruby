# Power Sum
def power_sum(x, n, num = 1)
  return 1 if X == 0
  return 0 if x < 0 || num**n > x

  # Include current num^n + exclude current num^n
  power_sum(x - num**n, n, num + 1) + power_sum(x, n, num + 1)
end	
