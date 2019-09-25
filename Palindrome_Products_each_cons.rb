
class Palindrome_Products
  attr_accessor :number1,:number2
  $NEW_LIST = []
  $INTERVAL_LIST = []
  $solution
  $final_list = []
  def initialize(number1,number2)
    @number1 = number1
    @number2 = number2
  end
  def identify_numbers
    range = [*number1..number2]
    $solution = range.permutation(2).to_a
    $INTERVAL_LIST << $solution.flatten.each_cons(2).map{|m| m.reduce(:*)}
    $NEW_LIST << range.each_with_object([]){|i,a| a << i * i}
    $NEW_LIST << $solution.flatten.each_cons(2).map{|m| m.reduce(:*)}
  end
  def return_numbers
   identify_numbers.flatten.uniq.sort.each{|number|
    if number.to_s == number.to_s.reverse!
      $final_list << number
    end
   }
   puts "Maximum value: #{$final_list[($final_list.length)-1]}"
   puts "Minimum value: #{$final_list[0]}"
  end
  def check_factors
    list_index = []
    $INTERVAL_LIST.flatten.each_with_index{|number,index|
      if number == $final_list[($final_list.length) -1]
        list_index << index
      end
    }
  print "Interval for the Maximum value: #{$solution[(list_index[2]) / 2]}"
  end
end

numbers = Palindrome_Products.new(10,99)
numbers.identify_numbers
numbers.return_numbers
numbers.check_factors
