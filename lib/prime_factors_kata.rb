require "prime"

class PrimeFactorsKata

  def eratosthenes(number)
    candidates = [nil, nil, *2..number]
    (2..Math.sqrt(number)).each do |i|
      (i**2..number).step(i){|m| candidates[m] = nil} if candidates[i]
    end
    candidates.compact.to_enum
  end

  def calculate(number)
    prime_factors = []
    prime_candidates = eratosthenes(number)
    current_prime = prime_candidates.next
    until Prime.prime?(number)
      if number % current_prime == 0
        prime_factors << current_prime
        number /= current_prime
      else
        current_prime = prime_candidates.next
      end
    end
    prime_factors << number
    prime_factors
  end

end
