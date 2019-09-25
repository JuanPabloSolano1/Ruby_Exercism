class Transcription
  attr_accessor :dna
  DNA_TO_RNA ={
  G: "C",
  C: "G",
  T: "A",
  A: "U"
  }
  def initialize(dna)
    @dna = dna.upcase
  end
  def result
   dna.chars.each do |letter|
    if DNA_TO_RNA.keys.include? letter.to_sym
      print DNA_TO_RNA[letter.to_sym]
    end
    end
  end
end
check = Transcription.new("GCTA")
check.result
