class Counter
  attr_accessor :string
  def initialize(string)
    @string = string
  end
  def count
     string.split(" ").uniq.each{|word|
       puts "#{word}: #{string.split(" ").count(word)}"}
  end
end


new_string = Counter.new("olly olly in come free ")
new_string.count
#check the other Solution
class Phrase
  attr_accessor :words

  def initialize(words)
    @words = words
  end

  def word_count
    word_list = Hash.new(0)
    words.downcase.scan(/\w+/) do |word|
      word_list[word] += 1
    end
    word_list
  end

end
new_string = Phrase.new("olly olly in come free ")
puts new_string.word_count
