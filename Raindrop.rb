
class Raindrops
  attr_accessor :number
  attr_accessor :new_list
  def initialize(number)
    @number = number
  end
  def creation
    new_list = []
    (1).upto(number){|n|
      if number % n == 0
        new_list << n
      end
    }
    #Check if value is in multiple arrays
    if (new_list & [3,5,7] == [3,5,7])
      print "In raindrop-speak, this would be a simple: " + "Pling" + "Plang" + "Plong"
    elsif (new_list & [3,5] == [3,5])
      print "In raindrop-speak, this would be a simple: " + "Pling" + "Plang"
    elsif (new_list & [3,7] == [3,7])
      print "In raindrop-speak, this would be a simple: " + "Plong" + "Pling"
    elsif (new_list & [5,7] == [5,7])
      print "In raindrop-speak, this would be a simple: " + "Plong" + "Plang"
    elsif (new_list & [7] == [7])
      print "In raindrop-speak, this would be a simple: " + "Plong"
    elsif (new_list & [5] == [5])
      print "In raindrop-speak, this would be a simple: " + "Plang"
    elsif (new_list & [3] == [3])
      print "In raindrop-speak, this would be a simple: " + "Pling"
    else
      print "In raindrop-speak, this would be a simple: " + (new_list).max
    end
  end
end
check = Raindrops.new(105)
print check.creation
