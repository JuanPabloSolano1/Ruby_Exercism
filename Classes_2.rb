
#Private or Public
class Person
  def initialize(user,age)
    @user = user
    @age = age
  end

  public

  def print
    puts "my name is #{@user} and I'm #{@age}"
  end

  public

  def bank_account
    @bank_account = 12345
    puts "The #{@user} has the bank account number #{@bank_account}"
  end
end

my_name = Person.new("Juan",45)
my_name.print
my_name.bank_account

class Person
  attr_reader :name
  attr_writer :job

  def initialize(name, job)
    @name = name
    @job = job
  end
end

class Person
  attr_reader :name
  attr_accessor :job
  attr_accessor :job

  def initialize(name, job)
    @name = name
    @job = job
  end
end


module Circle

  PI = 3.141592653589793

  def Circle.area(radius)
    PI * radius**2
  end

  def Circle.circumference(radius)
    2 * PI * radius
  end
end

#Creating a module
module Math
  puts PI
end

#Printing specififying a module
puts Math::PI

#require or include are two ways of calling modules.
require 'date'

puts Date.today


class Angle
  include Math
  attr_accessor :radians

  def initialize(radians)
    @radians = radians
  end

  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosine


module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump

module MartialArts
  def swordsman
    puts "I'm a swordsman"
  end
end

class Ninja
include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end


module Languages
  FAVE = "I love Python"
end

class Search
  include Languages
  def initialize; end
  def victory
    puts FAVE
  end
end

total = Search.new
total.victory

class Message
  @@messages_sent = 0
  def initialize(from,to)
    @from = from
    @to = to
    @@messages_sent +=1
  end
end

class Email < Message
  def initialize(from,to)
    super
  end

  def self.check_in
    return @@messages_sent
  end
end
my_message = Message.new("Juan","Erika")
my_message = Message.new("Pedro", "Daniel")

puts "The count of messages sent is: #{Email.check_in}"


module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now


module ThePresent
  def now
    if Time.new.min < 10
      puts "The time is: #{Time.new.hour}:0#{Time.new.min}:#{Time.new.sec}  #{Time.new.zone}"
    else
      puts "The time is: #{Time.new.hour}:#{Time.new.min}:#{Time.new.sec} #{Time.new.zone}"
    end
  end
end
  class Check
    extend ThePresent
  end

Check.now
