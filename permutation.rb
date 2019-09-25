def number_shuffle(number)
  check = number.to_s.split(//)
  print (check.permutation.map &:join).length
end

number_shuffle(1234)


def number_shuffle(number)
  no_of_combinations = number.to_s.size == 3 ? 6 : 24
  digits = number.to_s.split(//)
  combinations = []
  combinations << digits.shuffle.join.to_i while combinations.uniq.size!= no_of_combinations
  return combinations.uniq.sort
end
print number_shuffle(1234)
