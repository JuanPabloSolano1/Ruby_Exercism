
new_list = []
new_array = []
while true
  print  "\n Hello welcome, this is the menu
  1) Add
  2) Show
  3) Write to a File
  4) Read from a File
  5) Delete a Task
  6) Update a Task
  Q) Quit\n"

  puts "\nInclude an option: \n"
  user_input = (gets.chomp)
  if user_input == '1'
    puts("Include an Activity: ")
    choice = gets.chomp
    new_list.push(choice)
    next
  elsif user_input == '2'
    puts("\nThis is the list: \n")
    new_list.map.with_index do |item,i|
     puts "(#{(i.next).to_s}) :  #{item} "
    next
    end
  elsif user_input == '3'
    puts("Give a name to the file: ")
    file_name = gets.chomp
    check_list = new_list.each do |word|
       word
    end
    IO.write(file_name,check_list.join("\n"))
    next
  elsif  user_input == '4'
    puts("Give the name of the file you want to read: ")
    file_name = gets.chomp
    IO.readlines(file_name).each do |line|
      new_list.push(line.chomp)
    end
  elsif user_input == '5'
    puts "Which entry do you want to delete?"
    remove_entry = Integer(gets.chomp)
    new_list.delete_at((remove_entry)-1)
    next
  elsif user_input == '6'
    puts "Which task do you want to replace?"
    replace = Integer(gets.chomp)
    puts "Which is the new task?"
    new_task = gets.chomp
    new_list[(replace)-1] = new_task
    next
  elsif user_input.include? "Q"
    puts "The system is exciting!"
    puts "This is your final list: "
    new_list.map.with_index do |l,i|
      puts "(#{(i.next).to_s}) :  #{l} "
    end
    break
  end
end
