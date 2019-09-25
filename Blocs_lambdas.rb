5.times do |x|
  x = "I'm a block"
  puts x
end

fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

# Add your code below!

double = Proc.new {|x| x * 2}

doubled_fibs = fibs.collect(&double)

puts doubled_fibs


new_list = []
fibs.each do |x|
  new_list.push(x * 2)
end
print(new_list)


def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

#Yield works as a placeholder for another code to go in
def check_print
  puts "Hello There"
  yield
  puts "I am going to nail this"
  puts " I am back in the game"
end

check_print {puts "Dont forget about me"}

def get_name(name)
  puts "Let's see how yield works"
  yield("Juan")
  puts "We are yielding one more time"
  yield(name)
  puts "The system is completed"
end

get_name("Pablo") do |x|
  puts "my name is: "  + x
end

def get_name(name)
  puts "Let's see how yield works"
  yield("Juan")
  puts "We are yielding one more time"
  yield(name)
  puts "The system is completed"
end

get_name("Pablo") { |x|
  puts "my name is: "  + x}

get_name("Pablo") do |x|
  puts "my name is: " + x
end

def double(number)
  puts "This is the new method"
  yield(number)
  puts "Here is the number multiplied by 2"
end

double(4) {|number| puts "Here is the new value: " + (number * 2).to_s}

#You can think of a proc as a “saved” block: just like you can give a bit of code a name and turn it into a method, you can name a block and turn it into a proc. Procs are great for keeping your code DRY, which stands for Don’t Repeat Yourself. With blocks, you have to write your code out each time you need it; with a proc, you write your code once and can use it many times!


multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

print (1..100).to_a.select(&multiples_of_3)

#map and collect are using the same principle
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Write your code below this line!
round_down = Proc.new {|num|  num.floor}


# Write your code above this line!
ints = floats.map!(&round_down)
print ints

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

#Generate a Proc
# Complete this as a new Proc
over_4_feet = Proc.new {|num| num >=4}

# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

puts can_ride_1
puts can_ride_2
puts can_ride_3

def greeter()
  yield
  yield
end

phrase = Proc.new { puts "Hello There"}
greeter(&phrase)

#Check-call
hi = Proc.new {puts "Hello!"}
hi.call


numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.map(&:to_s)
print(strings_array)

#Lambda Method
def lambda_check(lambda_a)
  puts "I am the method"
  lambda_a.call
end

lambda_check(lambda{puts "I am the Lambda"})

lambda { |param| block }


strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!
symbolize = lambda{|strings| strings.to_sym}


# Write your code above this line!
symbols = strings.collect(&symbolize)
print symbols

#Select only the symbols
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Add your code below!
my_symbol = lambda{|string| string.is_a? Symbol}

print my_array.select(&my_symbol)

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

my_symbol = lambda{|string| string.is_a? String}

puts my_array.select(&my_symbol)

#Create a lambda directly &
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select(&lambda{|string| string.is_a? Integer})
print ints

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!

#Check values that have an entry that is before M 
check = lambda{|key, value| value < "M"}

alphabet = crew.select(&check).sort
print alphabet
