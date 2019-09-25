def numbers(numbers)
  return numbers.reduce(&:+)
end
puts numbers([1,2,3])

def numbers(numbers)
  return numbers.inject(0){|sum,x|
    sum + x
  }
end
puts numbers([1,2,3])
