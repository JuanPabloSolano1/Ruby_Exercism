class Allergies
  attr_accessor :number
  ALLERGENS ={
    "eggs" => 1,
    "peanuts" => 2,
    "shellfish" => 4,
    "strawberries" => 8,
    "tomatoes" => 16,
    "chocolate" => 32,
    "pollen" => 64,
    "cats" => 128
  }
  def initialize(number)
    @number = number
  end
  def is_allergen?
    ALLERGENS.inject([]) do |allergies,(key,value)|
      print "It is an identified allergen" if (value & number) == value
    end
  end
  def print_allergens
    ALLERGENS.inject([]) do |allergens,(key,values)|
      (values & number) == values ? allergens << key : allergens
    end
  end
end

solution = Allergies.new(34)
#solution.is_allergen?
print solution.print_allergens


ALLERGENS ={
  "eggs" => 1,
  "peanuts" => 2,
  "shellfish" => 4,
  "strawberries" => 8,
  "tomatoes" => 16,
  "chocolate" => 32,
  "pollen" => 64,
  "cats" => 128
}
num = 6

raise ArgumentError if num> 192
if ALLERGENS.values.include? num
  ALLERGENS.select{|key|
    print key if ALLERGENS[key] == num
  }
else
new_list = []
check = ALLERGENS.values.permutation(2).to_a
check.flatten.each_cons(2).map{|m|
  new_list <<  m.reduce(&:+)
}

index_list = []
new_list.each_with_index{|number, index|
index_list << index if number == num
}
final_list = []
check[(index_list[0])/2].each{|number|
  ALLERGENS.select{|key|
    final_list <<  key if ALLERGENS[key] == number
  }
}
#print final_list
end
