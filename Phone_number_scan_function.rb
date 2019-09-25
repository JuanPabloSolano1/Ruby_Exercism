#+1 (613)-995-0253
#613-995-0253
#1 613 995 0253
#613.995.0253

class Phone
  attr_accessor :number
  NEW_LIST = []
  def initialize(number)
    @number = number
  end
  def clean_number
    number.scan(/\w/).map{|numbers|
      NEW_LIST << numbers.to_i
    }
    NEW_LIST.delete_at(0) if NEW_LIST.first == 1
    return NEW_LIST.join

  end
end

solution = Phone.new("+1 (613)-995-0253")
#print solution.clean_number

class PhoneNumber

  def self.clean(entered_phone)
    entered_phone.gsub(/\W/,"")[/[^1]?[2-9]\d{1}\d{8}/]
  end

end

solution = PhoneNumber.clean("+1 (613)-995-0253")
print solution
