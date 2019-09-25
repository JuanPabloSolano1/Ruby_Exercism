
class Isogram
  attr_accessor :string
  attr_accessor :new_list
  def initialize(string)
    @string = string.downcase
  end
  def convert
    new_list = []
    string.delete!("-")
    string.chars.count do |word|
    new_list << string.chars.count(word) if word != " "
    end
    if new_list.uniq.include? 2
      print "Not an isogram"
    else
      print "Isogram"
    end
  end
end

new_string = Isogram.new('Lumberjackl')
new_string.convert

#Solution in one line
def is_isogram(string)
  string.downcase.chars.uniq == string.downcase.chars ? "Isogram" : "Not an Isogram"
end

print is_isogram('Lumberjackl')
