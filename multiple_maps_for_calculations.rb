numbers = [3,5,6]

print numbers.map{|number|
 (0..10).map{|n|
   number * n
 }
}.flatten.reduce(&:+)
