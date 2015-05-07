require_relative "PrimeGetter"
require "minitest/autorun"

class TestPrimeCalculator < Minitest::Test
  def helper_prime(number)
    primes = PrimeGetter.new(number)
    return primes.prime_not_upper_than
  end

  def test_prime_not_upper_than
    assert helper_prime(10).include?(7)
    assert helper_prime(20).include?(19)
  end
end
