
class Series_Product
  attr_accessor :numbers , :digit
  def initialize(numbers, digit)
    @numbers = numbers
    @digit = digit
  end
  def largest_product
    @numbers.split('').map(&:to_i).each_cons(@digit).map{|number|
       number.reduce(&:*)
    }.max
end
end

solution = Series_Product.new('73167176531330624919225119674426574742355349194934',6)
print solution.largest_product
