
class Flatten_Array
  attr_accessor :input
  def initialize(input)
    @input = input
  end
  def flatten
    return input.flatten.compact
  end
end

solution = Flatten_Array.new([1,[2,3,nil,4],[nil],5])
print solution.flatten
