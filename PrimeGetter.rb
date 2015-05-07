class PrimeGetter
  attr_accessor :number
  def initialize(n)
    @number = n
  end

  def prime_not_upper_than()
    unless @number.is_a? Integer
      puts "n must be an integer."
      return nil
    end
    if @number < 0
      puts "n must be greater than 0."
      return nil
    end
    array = [2]
    iter = 3
    while (iter < @number) do
      is_prime = true
      array.each do |a|
        if (iter % a == 0)
          is_prime = false
          break
        elsif (a > Math.sqrt(iter))
          break
        end
      end
      if(is_prime)
        array.push(iter)
      end
      iter += 1
    end 
    return array
  end

end

if __FILE__ == $0
  puts PrimeGetter.prime_not_upper_than(ARGV[0].to_i)
end

# Get prime numbers not upper than maximum number
#
# pseudo code

# if maximum number is not a integer or lower than 1
#   print error message and return nil
#
# start with prime numbers = [2] and number = 3
# while (number is not upper than maximum number)
#   if number is prime number
#     add the number to prime numbers
#   increase the number by 1
# return prime numbers
