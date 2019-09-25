
class Luhn
  attr_accessor :check
  attr_accessor :number
  def initialize(number)
    @number = number
  end
  def is_valid
   if number.to_s.length < 2
     print "Include a different card number"
   else
    print "Great that card number is valid"
  end
  end
  def double
    raise ArgumentError if number =~ /[0-9]+/
    check = number.to_s.chars
    check.map!.each_with_index {|n,index|
      index.even? ? n.to_i * 2 : n.to_i}

    check.map!.each_with_index {|n,index|
    n.to_i > 9 ? (n.to_i) - 9 : n.to_i
    }
    check.reduce(&:+) % 10 == 0 ? "Valid Card" : "Invalid Card"
  end
end

credit_card = Luhn.new(4539148803436467)
print credit_card.double
