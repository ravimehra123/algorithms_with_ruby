module LCG
  module Common
    # The original seed of this generator.
    attr_reader :seed
 
    # Creates a linear congruential generator with the given _seed_.
    def initialize(seed)
      @seed = @r = seed
    end
  end
  class GenerateRandomNumber
    include Common
    def rand
      @r = (5 * @r + 3) % 7
    end
  end

end

lcg = LCG::GenerateRandomNumber.new	(0)
p (1..12).map {lcg.rand}