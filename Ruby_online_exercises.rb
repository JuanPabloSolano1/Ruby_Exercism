numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#Print all numbers
numbers.each {|number|
  puts number
}

#print numbers higher than 5

numbers.select do |number|
  puts number if number > 5 && number % 2 != 0
end

#Append 11 at the end of the array and prepend 0 at the beguinning
numbers.push(11)
numbers.unshift(0)

#Get rid of "11". And append a "3".
numbers.pop
numbers.push(3)

print numbers

#Get rid of duplicates without specifically removing any one value.
final_list = [1,2,3,4,5,1]
final_list.uniq!

#Suppose you have a hash h = {a:1, b:2, c:3, d:4}

h = {a:1, b:2, c:3, d:4}
#1. Get the value of key `:b`.

h.each {|value,key|
  if value.to_s == 'b'
    puts key
  end
}
print h[:b]
#2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5

#3. 3. Remove all key:value pairs whose value is less than 3.5
h.each do |key,value|
  if value < 3.5
    h.delete(key)
    h.delete(value)
  end
end
print h

h.delete_if do |key,number|
  number < 3.5
end
print h

#Given the following data structures. Write a program that moves the information from the array into
#to the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]




contacts.each do |key,value|
  if key.include? "Joe"
    contacts[key] = contact_data[0][0] , contact_data[0][1] , contact_data[0][2]
  elsif key.include? "Sally"
    contacts[key] = contact_data[1][0] , contact_data[1][1] ,  contact_data[1][2]
  end
end
print contacts

ontacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

#Shift - retuns only one loop
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email,:address,:phone]

contacts.each do |key,values|
  fields.each do |fields|
    values[fields] = contact_data.shift
  end
end
print contacts

#Loop inside of multiple hashes
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

fields = [:email,:address,:phone]

contacts.each_with_index do |(name,hash),idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

print contacts

#Delete the words that starts with 's' or 'w'
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if do |word|
  word.start_with?('s') || word.start_with?('w')
end

print arr


a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a = a.map{|word|
  word.split
}
a = a.flatten
print a


hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
