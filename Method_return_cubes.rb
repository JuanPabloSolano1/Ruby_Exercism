def sum_of_cubes(a, b)
  new_list = []
  a.upto(b) do |number|
    new_list << number ** 3
  end
  return new_list.reduce(&:+)
end

puts sum_of_cubes(1,3)
#Example Given range 1 to 3 the method should return 36
