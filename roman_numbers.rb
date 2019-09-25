ROMAN_NUMS = {
  "M" => 1000,
  "CM" => 900, "D" => 500, "CD" => 400, "C" => 100,
  "XC" => 90,  "L" => 50,  "XL" => 40,  "X" => 10,
  "IX" => 9,   "V" => 5,   "IV" => 4,   "I" => 1
}

def romanize(num)
  ROMAN_NUMS.map do |ltr, val|
    amt, num = num.divmod(val)
    print ltr * amt
  end
end

romanize(7)

@digits = {
  1000 => "M",
   900 => "CM", 500 => "D", 400 => "CD",  100 => "C",
    90 => "XC",  50 => "L",  40 => "XL",   10 => "X",
     9 => "IX",   5 => "V",   4 => "IV",    1 => "I"
}

def romanize(num)
  @digits.keys.each_with_object('') do |key, str|
    nbr, num = num.divmod(key)
    str << @digits[key]*nbr
  end
end

romanize(888) # => "DCCCLXXXVIII"
romanize(999) # => "CMXCIX"
