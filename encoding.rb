# "AABCCCDEEEE"  ->  "2AB3CD4E"

class EnCoding
  attr_accessor :input
  def initialize(input)
    @input = input
  end
  def compress
    @input.chars.slice_when(&:!=).map{|chars|
      chars_size = chars.size
      print chars.size,chars.first
    }
  end
  def decompress
    @input.scan(/(\d*)(\D)/).map{|count,chars|
    print chars * count.to_i
    }
  end
end

check = EnCoding.new('2AB3CD4E')
check.decompress
