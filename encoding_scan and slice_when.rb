# "AABCCCDEEEE"  ->  "2AB3CD4E"

class EnCoding
  attr_accessor :input
  def initialize(input)
    @input = input
  end
  def compress
    new_list = []
    @input.chars.slice_when(&:!=).map{|chars|
      chars_size = chars.size
      new_list << chars.size << chars.first
    }
    print new_list.join
  end
  def decompress
    @input.scan(/(\d*)(\D)/).map{|count,chars|
    print chars * count.to_i
    }
  end
end

check = EnCoding.new("AABCCCDEEEE" )
check.compress

#My_code
text = "wwwwaaadexxxxxx"
text.chars.uniq.each_with_index do |letter,index|
 if letter != letter[index + 1]
   #print letter + text.count(letter).to_s
 end
end
