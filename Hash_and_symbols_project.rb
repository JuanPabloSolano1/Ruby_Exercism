movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

while true
  puts "What would you like to do?"
  puts "-- Type 'add' to add a movie."
  puts "-- Type 'update' to update a movie."
  puts "-- Type 'display' to display all movies."
  puts "-- Type 'delete' to delete a movie."
  action = gets.chomp
  if action.include? "add"
    puts "Which movie do you want to include? "
    new_add = gets.chomp
    puts "Please include a rating"
    new_rating = Integer(gets.chomp)
    movies[new_add.to_sym] = new_rating
    puts "The new rating for #{new_add} is #{new_rating}"
    next
  elsif action.include? "update"
    puts "Which movie do you want to update? "
    update_movie = gets.chomp
    puts "What is the new rating? "
    new_rating = Integer(gets.chomp)
    movies[update_movie.to_sym] = new_rating
    puts "The new rating for #{update_movie} is #{new_rating}"
    next
  elsif action.include? "display"
    puts "The name of all the movies are: "
    movies.each do |key,value|
      print " #{key} : #{value} "
    end
    next
  elsif action.include? "delete"
    puts "Which movie do you want to delete? "
    delete_movie = gets.chomp
    movies.delete(delete_movie.to_sym)
    puts "The movie #{delete_movie} was deleted"
    next
  else
    puts "Did not include the right option"
    break
  end
end
  print movies   
