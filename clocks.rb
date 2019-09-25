#Implement a clock that handles times without dates.
#You should be able to add and subtract minutes to it.
#Two clocks that represent the same time should be equal to each other.

#Ruby - only sums seconds to the date.
class Clock
  def display_time
    time1 = Time.now.min < 10 ? "#{Time.now.hour}:0#{Time.now.min}:#{Time.now.sec}" :
    "#{Time.now.hour}:#{Time.now.min}:#{Time.now.sec}"
    return time1
  end
  def change_time_positive(number = 0)
    time_1 = Time.now + (number * 60)
    time_2 = time_1.strftime("%H:%M:%S")
    print time_2
  end
  def change_time_negative(number = 0)
  time_1 = Time.now - (number * 60)
  time_2 = time_1.strftime("%H:%M:%S")
  print time_2
end
end

new_time = Clock.new
#print new_time.display_time
print new_time.change_time_positive(92)
#print new_time.change_time_negative(180)
