
class Robot
  attr_accessor :letter
  attr_accessor :number

  NEW_LIST = []
  @@ROBOT_DATABASE ={}
  def letter
    check = ('A'..'Z').map{|letter| letter}
    solution = 2.times{NEW_LIST << check[rand(20)]}
  end
  def number
    numbers = (1..10).map{|number| number}
    solution1 = 3.times{NEW_LIST << numbers[rand(9)]}
  end
  def result
    unless @@ROBOT_DATABASE.include? NEW_LIST
     @@ROBOT_DATABASE[@@ROBOT_DATABASE.length] = NEW_LIST.join("")
      puts @@ROBOT_DATABASE
     NEW_LIST.clear
   end
  end
  def forget(num)
   @@ROBOT_DATABASE.delete(num-1)
   letter
   number
   result
  end
end

robot_1 = Robot.new
robot_1.letter
robot_1.number
robot_1.result

robot_2 = Robot.new
robot_2.letter
robot_2.number
robot_2.result
robot_2.forget(2)
