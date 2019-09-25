#1, 2, 3, 4, 5

class Accumulate
  attr_accessor :numbers
  def initialize(numbers)
    @numbers = numbers
  end
  def squares
    new_list = []
    numbers.each_with_object([]){|number| new_list << number ** 2}
    return new_list
  end
end

result = Accumulate.new([1,2,3,4,5,6])
print result.squares
