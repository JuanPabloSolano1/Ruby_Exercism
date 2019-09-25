class Series
  attr_accessor :string
  def initialize(string)
    @string = string
  end
  def length(size)
    raise ArgumentError if size > string.length
    return string.chars.each_cons(size).map(&:join)
  end
end

solution = Series.new("49142")
print solution.length(3)
