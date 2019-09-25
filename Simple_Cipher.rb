#Giving "iamapandabear" as input to the encode function returns the cipher "ldpdsdqgdehdu".
# Obscure enough to keep our message secret in transit.
#Step1
class Simple_Cipher
  attr_accessor :key,:text,:key
  $abecedary = 'abcdefghijklmnopqrstuvwxyz'
  $encode_hash = Hash.new{|hash,key| hash[key] = []}
  $decode_hash = Hash.new{|hash,key| hash[key] = []}
  $indexes = Hash.new{|hash,key| hash[key] = []}
  def initialize(text)
    @text = text
  end
  def encode
    $abecedary.chars.each_with_index{|word,index|
     $encode_hash[word] = $abecedary[index+3]
    }
    @text.chars.each{|word|
     print $encode_hash[word]
    }
  end
  def decode
    $abecedary.chars.each_with_index{|word,index|
     $encode_hash[word] = $abecedary[index+3]
    }
    $encode_hash.each{|key,value|
     $decode_hash[value] = key
    }
    @text.chars.each_with_index{|word,index|
      print $decode_hash[word]
    }
  end
  def encode_with_key(key)
    $abecedary.chars.each_with_index{|word,idx|
     $indexes[word] = idx
    }

    $abecedary.chars.each_with_index{|word,index|
    $encode_hash[word] = $abecedary[index + ($indexes[key[0]].to_i)]
    }

    @text.chars.each{|word|
     print $encode_hash[word]
    }
  end
  def random_key(key)
    raise ArgumentError if key != key.downcase
    if key == '' || key == nil || key == " "
      key = $abecedary.chars.sample
    end
    $abecedary.chars.each_with_index{|word,idx|
     $indexes[word] = idx
    }

    $abecedary.chars.each_with_index{|word,index|
    $encode_hash[word] = $abecedary[index + ($indexes[key[0]].to_i)]
    }

    @text.chars.each{|word|
     print $encode_hash[word]
    }
  end
end

solution = Simple_Cipher.new("iamapandabear")


#second solution

class Simple_Cipher
  attr_accessor :text
  $abecedary = 'abcdefghijklmnopqrstuvwxyz'
  $encode_hash = Hash.new{|hash,key| hash[key] = []}
  $decode_hash = Hash.new{|hash,key| hash[key] = []}
  def initialize(text)
    @text = text
  end
  def encode
    $abecedary.chars.each_with_index{|word,index|
      $encode_hash[word] = $abecedary[index + 3]
    }
    print @text.tr($encode_hash.keys.to_s,$encode_hash.values.to_s)
  end
  def decode
    $abecedary.chars.each_with_index{|word,index|
      $decode_hash[word] = $abecedary[index + 3]
    }
    print @text.tr($decode_hash.values.to_s,$decode_hash.keys.to_s)
  end
end
solution = Simple_Cipher.new('ldpdsdqgdehdu')
solution.decode
