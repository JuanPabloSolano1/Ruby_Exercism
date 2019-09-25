
class Crypto_Square
  attr_accessor :text
  NEW_LIST = []
  def initialize(text)
    @text = text
  end
  def crypto_message
    solution = text.downcase.scan(/[a-z]/)
    n = (solution.length ** 0.5).ceil
    solution.each_slice(n).map{|letter|
     while letter.length < n
       letter << " "
     end
      NEW_LIST << letter
    }
    NEW_LIST.transpose.map{|words|
      p words
    }
  end
end

solution = Crypto_Square.new("If man was meant to stay on the ground")
solution.crypto_message
