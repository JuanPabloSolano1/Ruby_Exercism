
#Decode
class Atbash_Cypher
  attr_accessor :text
  $plain = 'abcdefghijklmnopqrstuvwxyz'
  $cypher = $plain.chars.reverse.join
  $primary_list = Hash.new{|hash,key| hash[key] = []}
  def initialize(text)
    @text = text
  end
  def encode
    indexes = []
    $plain.chars.each_with_index{|text,index|
     $primary_list[text] = index
    }
    @text.chars.each{|letter|
     indexes << $primary_list[letter].to_s
    }
    final_table = []
    indexes.each{|words|
     final_table <<  $cypher.chars[words.to_i]
    }
    print final_table.join.gsub(/(.{5})/, '\1 ')
  end
  def decode
    final_text = @text.delete(' ')
    $cypher.chars.each_with_index{|text,index|
     $primary_list[text] = index
    }
    indexes = []
    final_text.chars.each_with_index{|word,index|
     indexes << $primary_list[word]
    }
    final_result = []
    check = indexes.each{|numbers|
    final_result << $plain[numbers]
    }
    print final_result.join
  end
end
solution = Atbash_Cypher.new('thequickbrownfoxjumpsoverthelazydog')
solution.encode
