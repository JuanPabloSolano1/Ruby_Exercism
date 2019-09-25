
class Grains
  attr_accessor :number
  def initialize(number)
    @number = number - 1
  end
  def square
    array_of_grains = (1).upto(number).each_with_object([1]){|i,a| a << 2 * a.last}
    return array_of_grains.last
  end
  def total
    total_number = (1).upto(64).each_with_object([1]){|i,a| a << 2 * a.last}
    return total_number.last
  end
end

chessboard = Grains.new(5)
print chessboard.square
#print chessboard.total
