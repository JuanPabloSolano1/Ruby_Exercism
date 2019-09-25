class Color
attr_accessor :r
attr_accessor :g
attr_accessor :b
  def initialize(r, g, b)
  @r = r
  @g = g
  @b = b
  end
  def brightness_index
  (r * 299 + g * 587 + b * 114) / 1000
  end

  def brightness_difference(another_color)
  (brightness_index - another_color.brightness_index).abs
  end

  def hue_difference(another_color)
  (r - another_color.r).abs +
  (g - another_color.g).abs +
  (b - another_color.b).abs
  end

  def enough_contrast?(another_color)
    brightness_difference(another_color) > 125 && hue_difference(another_color) > 500 ?
    "There is enough contrast" : "There isn't enough contrast"
  end
end

blue = Color.new(100,200,50)
red = Color.new(200,150,100)
puts blue.brightness_index
puts red.brightness_index
puts blue.brightness_difference(red)
puts blue.hue_difference(red)
puts blue.enough_contrast?(red)
#If Brightness difference is more than 125 and the Hue difference is more than 500 then the colors have sufficient contrast
