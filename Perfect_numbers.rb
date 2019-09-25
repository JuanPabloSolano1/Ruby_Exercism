
class Perfect_Numbers
  attr_accessor :number
  $numbers_list = []
  def initialize(number)
    @number = number
  end
  def categorize_number
    [*1..number-1].map{|num|
     $numbers_list << num if number % num == 0
    }
    if $numbers_list.reduce(&:+) == number
      print "perfect-number"
    elsif $numbers_list.reduce(&:+) > number
      print "abundant-number"
    elsif $numbers_list.reduce(&:+) < number
      print "deficient-number"
    end
  end
end

solution = Perfect_Numbers.new(28)
solution.categorize_number
