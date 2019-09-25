
puts "Please enter the message to your coach"
your_message = gets.chomp
answer = coach_answer_enhanced(your_message)
puts answer
while answer != ""
  your_message = gets.chomp
  answer = coach_answer_enhanced(your_message)
  puts answer
end

def coach_answer(your_message)
  if your_message == "I am going to work right now!"
    return ""
  elsif your_message.end_with? "?"
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  if your_message == "I AM GOING TO WORK RIGHT NOW!"
    return ""
  elsif your_message == your_message.upcase
    "I can feel your motivation! " + coach_answer(your_message)
  else
    coach_answer(your_message)
  end
end
