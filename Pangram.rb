#Pangram - The quick brown fox jumps over the lazy dog
class Pangram
  attr_accessor :sentence
  attr_accessor :new_list
  attr_accessor :letter
  NEW_LIST = []
  @@letter
  def initialize(sentence)
    @sentence = sentence
  end
  def total_letters
    @@letter = ("a".."z").map{|letters| letters}
  end
  def check_pangram
    check = sentence.split.join("")
    check.downcase.chars.each do |letter|
      unless NEW_LIST.include? letter
        NEW_LIST << letter
      end
    end
  end
  def result
    total_letters
    check_pangram
    print "We revised the Pangram status of the sentence and it is: "
    print NEW_LIST.sort == @@letter
  end
end

check = Pangram.new("Pack my box with five dozen liquor jugs")
check.total_letters
check.check_pangram
check.result

## Another Solution --
class Pangram

  def self.pangram?(phrase)
    split = phrase.downcase.split("")
    ("a".."z").all?{ |x| split.include?(x)}
  end

end


module BookKeeping
  VERSION = 5
end
