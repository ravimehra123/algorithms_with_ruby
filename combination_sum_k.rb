#Find all valid combinations of k numbers that sum up to n such that the following conditions are true:

#Only numbers 1 through 9 are used.
#Each number is used at most once.
#Return a list of all possible valid combinations. The list must not contain the same combinationtwice, and the combinations may be returned in any order.
def combination_sum_k(k, n)
  result = []
  backtrack(1, k, n, [], result)
  result
end

def backtrack(start, k, remaining_sum, path, result)
  if path.length == k && remaining_sum == 0
    result << path.dup
    return
  end

  return if path.length > k || remaining_sum < 0

  (start..9).each do |i|
    path << i
    backtrack(i + 1, k, remaining_sum - i, path, result)
    path.pop
  end
end
