
class Prime
  attr_accessor :num
  def initialize(num)
    @num = num
  end
  def prime_list
    new_list = []
    (2..200).each do |number|
      if (2..number-1).all?{|num| number % num > 0}
      new_list << number
    end
  end
    print new_list[0,num]
  end
end

check = Prime.new(7)
check.prime_list
