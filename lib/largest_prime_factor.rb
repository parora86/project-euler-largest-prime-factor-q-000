require "prime"
require "pry"

def largest_prime_factor(value)
  reduced_value = Math.sqrt(value)
  old_prime = nil
  Prime.each(reduced_value) do |prime|
    if (prime<value && value%prime==0)
      old_prime = prime
    end
  end
  return old_prime
end
