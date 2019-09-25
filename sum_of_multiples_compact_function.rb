#Check the multiples
class Multiples
  attr_accessor :multiples
  attr_accessor :number
  def initialize(*multiples,number)
    @multiples = multiples
    @number = number
  end
  def sum_multiples
    @multiples.map{|multiple|
     (0..number-1).select{|number|
       number % multiple == 0
     }
   }.flatten.uniq.reduce(&:+)
  end
end


solution = Multiples.new(3,5,20)
print solution.sum_multiples
