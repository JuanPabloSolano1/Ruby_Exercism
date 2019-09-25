#Inspect - prints by line
class Matrix
  attr_accessor :numbers
  def initialize(numbers)
    @numbers = numbers
  end
  def text
    return numbers.to_a.map(&:inspect)
  end
  def transpose
    return numbers.transpose.map(&:inspect)
  end
end

check = Matrix.new([[9,8,7],[5,3,2],[6,6,7]])
puts check.transpose
