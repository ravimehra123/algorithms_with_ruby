def valid_braces?(str)
  stack = []
  mapping = { "{" => "}", "(" => ")", "[" => "]" }

  str.each_char do |char|
    if mapping.keys.include?(char)
      stack << char
    elsif mapping.values.include?(char)
      return false if stack.empty? || stack.pop != mapping[char]
    end
  end

  stack.empty?
end

# Example usage:
puts valid_braces?("{}()[]")  # true
puts valid_braces?("{}(]")    # false
puts valid_braces?("{}(["))   # false
puts valid_braces?("[{}]")    # true
