class Sentence
  attr_reader :words
  def initialize(words)
    @words = words.strip
  end
  def is_blank?
    words.empty?
  end
  def is_question?
    words.end_with? "?"
  end
  def is_yelling?
    words.upcase == @words && @words.match?(/[A-Z]/)
  end
end


module BOB
 def self.check(input)
  sentence = Sentence.new(input)
  if sentence.is_blank?
   print "Fine. Be that way!"
  elsif sentence.is_question? && sentence.is_yelling?
   print "Calm down, I know what I'm doing!"
  elsif sentence.is_question?
   print "Sure."
  elsif sentence.is_yelling?
   print "Whoa, chill out!"
  else
   print "Whatever."
  end
 end
end

BOB.check("HELLO")

attr_accessor
