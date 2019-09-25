class Acronym
  def self.check_word(sentence)
   revise = sentence.split("").select{|x| x == x.upcase}
   revise.each {|word| print word if word != " "}
  end
end


Acronym.check_word('Portable Network Graphics')
