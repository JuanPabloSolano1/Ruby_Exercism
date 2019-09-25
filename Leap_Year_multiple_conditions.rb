#For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.
#For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.
#For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.
class Year
 attr_accessor :year
 def initialize(year)
  @year = year
 end
 def check_4
  if year % 4 != 0
  puts "This is not a Leap Year"
  else
  puts "Proceed to the next step"
   end
 end
 def check_100
  if year % 100 != 0
  puts "This is a Leap Year"
  else
  puts "Proceed to the next step"
  end
 end
 def check_400
  if year % 400 == 0
     puts "This is a Leap Year"
  else
    puts "This is not a Leap Year"
  end
end
end

check = Year.new(1900)
check.check_4
check.check_100
check.check_400

class Year
 attr_accessor :year
 def initialize(year)
  @year = year
 end
 def check_year
  if (year % 400 == 0) || (year % 4 == 0) && (year % 100 != 0 )
   print true
  else
   print false
  end
 end
end

check = Year.new(1988)
check.check_year
