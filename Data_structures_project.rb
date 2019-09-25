puts "Please include a text or sentence: "
text = "Hello my name is Juan Pablo and my name "
word = text.split(" ")

frequencies = Hash.new(0)

word.each do |words|
  frequencies[words] += 1
end
frequencies = frequencies.sort_by do |name,count|
  count
end
frequencies.reverse!
frequencies.each do |name,count|
  puts name + " : " + count.to_s
end

#to_s => converts integers to strings
#sort_by and reverse! => sorts (Based on highest value)
