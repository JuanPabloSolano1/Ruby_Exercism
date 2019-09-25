def keep(numbers)
  print numbers.map {|number| number if number.even?
  }.compact
end

def discard(numbers)
  print numbers.map {|number| number if number.odd?
  }.compact
end

keep([1,2,3,4,5])
discard([1, 2, 3, 4, 5])


def keep(numbers)
 numbers.each {|number|
   print number if number % 2 == 0
  }
end

keep([1,2,3,4,5])
