class Gigasecond
  attr_accessor :date
  def initialize(date)
    @date = date
  end
  def result
    giga = 10**9 / 31536000
    return (date + giga).round
  end
end

check = Gigasecond.new(2018)
print check.result
