matz = { "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}

matz.each do |name,nationality|
  puts "#{name} : #{nationality}"
end

#If starts with a : it is a symbol
menagerie = { :foxes => 2,
  :giraffe => 1,
  :weezards => 17,
  :elves => 1,
  :canaries => 4,
  :ham => 1
}

puts "string".object_id

puts :symbol.object_id


#Push _ Same as append (Symbols) Also you can use intern to convert strings to symbols
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!
symbols = []

strings.each do |symbol|
  check = symbol.to_sym
  symbols.push(check)
end
print symbols

#Same as Python dictionaries
movies = {
 check: "It was great",
 the_cost: "Amazing"
 }

#Bringing results based on a condition
 movie_ratings = {
   memento: 3,
   primer: 3.5,
   the_matrix: 5,
   truman_show: 4,
   red_dawn: 1.5,
   skyfall: 4,
   alex_cross: 2,
   uhf: 1,
   lion_king: 3.5
 }
 # Add your code below!

 check = movie_ratings.select do |movie,rating|
   rating >= 3
 end
 print(check)


 movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

movie_ratings.each_key {|k|
  puts k
  }
movie_ratings.each_value{|v|
  puts v
}

#Case statement - SQ;
case language
  when "JS"
    puts "Websites!"
  when "Python"
    puts "Science!"
  when "Ruby"
    puts "Web apps!"
  else
    puts "I don't know!"
end

if movies[title.to_sym].nil? 
   puts "That movie does not exist."
