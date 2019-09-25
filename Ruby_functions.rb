def puts_1_to_10
  (1..20).each {|i|
    puts i + 1
  }
end
puts_1_to_10

def array_of_10
  puts (1..10).to_a
end
array_of_10

#to_a => to an array
def cubertino(n)
  puts n ** 3
end

cubertino(8)

def what_up(greeting,*names)
  names.each { |friend|
    puts greeting + " #{friend}"}
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

def greeter(name)
  return "Hello #{name}"
end

print greeter("Juan")

def by_three?(number)
  if number % 2 == 1
    return true
  else
    return false
  end
end

print by_three?(3)


def by_three?(num)
  if num % 3 == 0
    return true
  else
    return false
  end
end
print by_three?(9)

def capitalize(string)
  return "#{string[0].upcase}#{string[1..-1]}"
end

print capitalize("Juan")

def capitalize(string)
  puts "#{string[0].upcase}#{string[1..-1]}"
end

print capitalize("juan")
print capitalize("erika")

["erika","jyan"].each {|word|
  puts "#{word[0].upcase}#{word[1..-1]}"
 }

 [1,2,3,4,5].each { |i|
   puts i
 }

 [1,2,3,4,5].each { |i|
   puts i * 5
 }

 my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]
 puts my_array.sort!

 books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

puts books.sort!


book_1 = "A Wrinkle in Time"

book_2 = "A Wrinkle in Time"

print book_1 <=> book_2


fruits = ["orange", "apple", "banana", "pear", "grapes"]

fruits.sort! do |fruitOne, fruitTwo|
  fruitTwo <=> fruitOne
end

my_array = [1, 2, 3, 4, 5]

my_array.each {|number|
  puts number * number
  }
