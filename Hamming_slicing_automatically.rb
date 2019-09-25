class Hamming
  attr_accessor :string1
  attr_accessor :string2
  attr_accessor :count
  def initialize(string1,string2)
    @string1 = string1
    @string2 = string2
  end
  def calculation
    raise ArgumentError if string1.length != string2.length
    count = 0
    string1.chars.each.with_index do |letter,index|
      if string1.chars[index] != string2.chars[index]
        count += 1
      end
    end
    return "The Hamming distance between these two DNA strands is #{count}"
  end
end

dna_strings = Hamming.new('GAGCCTACTAACGGGAT','CATCGTAATGACGGCCT')
print dna_strings.calculation
