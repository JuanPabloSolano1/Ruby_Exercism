

class Multiples
  attr_accessor :number
  def initialize(number)
    @number = number
  end
  def sum_multiples
    return (0..number - 1).map{|number|
    if number % 3 == 0 || number % 5 == 0
      number
    end
    }.compact.reduce(&:+)
  end
end

solution = Multiples.new(20)
print solution.sum_multiples
