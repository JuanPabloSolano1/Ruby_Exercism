#Given "listen" and a list of candidates like "enlists" "google" "inlets" "banana"
#the program should return a list containing "inlets".

 class Anagram
   attr_accessor :word
   attr_accessor :list
   def initialize(word,list)
     @word = word.delete(" ")
     @list = list
   end
   def check_anagram
    @list.sort.map {|word|
    print word if word.scan(/[#{@word}]/).join.length == @word.length}
  end
 end

 solution = Anagram.new('customers',["placebo" ,"real lady" ,"store scum", "funeral" ])
 solution.check_anagram
