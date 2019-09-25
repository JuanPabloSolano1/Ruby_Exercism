counter = 1

while counter < 11
  puts(counter)
  counter = counter + 1
end

counter = 1
until counter == 11
  puts counter
  counter = counter + 1

end

counter = 1
until counter == 11
  puts counter
  counter += 1
end

for nums in 1..10
  puts nums
end

for num in 1..15
  puts num
end

i = 20
loop do
  i -= 1
  puts "#{i}"
  break if i <= 0
end

for nums in 1..20
  next if nums % 2 == 0
  puts nums
end

i = 20
loop do
  i -= 1
  next if i % 2 == 1
  puts i
  break if i <= 0
end

my_array = [1,2,3,4,5]

my_array.each do |x|
  x += 10
  puts "The final result is: #{x + 2}"
end


odds = [1,3,5,7,9]

odds.each do |x|
  x *= 2
  print x
end

2.times{print "Hello there, JP is a rockstar"}


i = 0
for nums in 1..50
  puts nums
  nums += 1
end
