
class Sieve
  attr_accessor :number
  def initialize(number)
    @number = number
  end
  def prime_numbers
    require 'prime'
    return Prime.entries number
  end
end

check = Sieve.new(30)
print check.prime_numbers


class Sieve

  def initialize(limit)
    @limit = limit
  end

  def primes
    list = [*(2..@limit)]
    list.each { |n| n.upto(@limit) {|x| list.delete(n * x)}}
  end

end
check = Sieve.new(30)
print check.primes
