print "Please include a word!"
word = gets.chomp
word.downcase!

if word.include? "s"
  word.gsub!(/s/,"th")
else
  puts "Please include another word"
end

puts "The word is: #{word}"
