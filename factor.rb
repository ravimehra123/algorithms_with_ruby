class PrimeFactors
  class << self
    def for(number)
      divisors = []
      divisor = 2

      while number > 1 and divisor < Math.sqrt(number)
        if number % divisor == 0
          number /= divisor
          divisors << divisor
        else
          divisor += 1
        end
      end
      divisors << number
      divisors
    end
  end
end

p PrimeFactors.for(12345678)