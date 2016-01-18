require "prime"

class PrimeFactorsKata

  def eratosthenes(number)
    candidates = [nil, nil, *2..number]
    (2..Math.sqrt(number)).each do |i|
      (i**2..number).step(i){|m| candidates[m] = nil} if candidates[i]
    end
    candidates.compact
  end

  def calculate(number)
    resulting_factors = []
    candidates = eratosthenes(number)
    prime_candidates = candidates.to_enum
    current_prime = prime_candidates.next
    until Prime.prime?(number)
      if number % current_prime == 0
        resulting_factors << current_prime
        number /= current_prime
      else
        current_prime = prime_candidates.next
      end
    end
    resulting_factors << number
    resulting_factors
  end

end
