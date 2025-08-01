#Infix to Postfix
class InfixToPostfix
  OPERATORS = {
    '+' => { precedence: 1, associativity: 'Left' },
    '-' => { precedence: 1, associativity: 'Left' },
    '*' => { precedence: 2, associativity: 'Left' },
    '/' => { precedence: 2, associativity: 'Left' },
    '^' => { precedence: 3, associativity: 'Right' }
  }

  def self.convert(expression)
    output = []
    stack = []

    tokens = expression.scan(/\d+|[a-zA-Z]+|[\+\-\*\/\^\(\)]/) # tokenizes numbers, variables, and operators

    tokens.each do |token|
      if operand?(token)
        output << token
      elsif operator?(token)
        while !stack.empty? && operator?(stack.last)
          top = stack.last
          break if right_associative?(token) && precedence(token) == precedence(top)
          break if precedence(token) > precedence(top)

          output << stack.pop
        end
        stack.push(token)
      elsif token == '('
        stack.push(token)
      elsif token == ')'
        while stack.any? && stack.last != '('
          output << stack.pop
        end
        stack.pop # discard '('
      end
    end

    output.concat(stack.reverse)
    output.join(' ')
  end

  def self.operand?(token)
    token.match?(/^[a-zA-Z0-9]+$/)
  end

  def self.operator?(token)
    OPERATORS.key?(token)
  end

  def self.precedence(op)
    OPERATORS[op][:precedence]
  end

  def self.right_associative?(op)
    OPERATORS[op][:associativity] == 'Right'
  end
end

puts InfixToPostfix.convert("a + b * (c ^ d - e) ^ (f + g * h) - i")
