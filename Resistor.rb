class Resistor
  attr_accessor :color1
  attr_accessor :color2
  attr_accessor :colors
  def initialize(color1,color2)
    @color1 = color1.downcase.capitalize
    @color2 = color2.downcase.capitalize
  end
  def result
    colors = {
    Black: 0,
    Brown: 1,
    Red: 2,
    Orange: 3,
    Yellow: 4,
    Green: 5,
    Blue: 6,
    Violet: 7,
    Grey: 8,
    White: 9
    }
  return (colors[color1.to_sym]).to_s + (colors[color2.to_sym]).to_s
  end
end
new_colors = Resistor.new('violet','blue')
print new_colors.result
