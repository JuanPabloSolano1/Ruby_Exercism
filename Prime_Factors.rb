

class Prime_Factor
  def self.get_numbers(number)
    numberf = 2
    new_list = []
    while number > 1
      if number % numberf == 0
        number /= numberf
        new_list << numberf
      else
        numberf += 1
      end
    end
    print new_list
  end
end

Prime_Factor.get_numbers(60)
