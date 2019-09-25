string = "olly olly in come free "

list = Hash.new(0)
string.split(" ").each do |word|
  list[word] += 1
end
puts list.map(&:inspect)
