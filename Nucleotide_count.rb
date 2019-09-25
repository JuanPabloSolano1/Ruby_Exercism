#'A' for adenine, 'C' for cytosine, 'G' for guanine, and 'T' thymine.
class Nucleotide_Count
  attr_accessor :sentence
  def initialize(sentence)
    @sentence = sentence
  end
  def count_nucleotides
    new_list = []
    sentence.scan(/[acgt]/).each{|letter|
     unless new_list.include? sentence.count(letter)
      new_list << letter.upcase.to_s + " => " + sentence.count(letter).to_s
    end
    }
    return new_list.uniq
  end
end

solution = Nucleotide_Count.new('nucleotides are to DNA as')
print solution.count_nucleotides
