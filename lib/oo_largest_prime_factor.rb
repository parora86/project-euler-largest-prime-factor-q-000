require "prime"
require "pry"

class LargestPrimeFactor
  def initialize(value_int)
    @value = value_int
  end

  def number()
    reduced_value = Math.sqrt(@value)
    old_prime = nil
    Prime.each(reduced_value) do |prime|
      if (prime<@value && @value%prime==0)
        old_prime = prime
      end
    end
    return old_prime
  end
end
