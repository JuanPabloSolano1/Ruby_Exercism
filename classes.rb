class Language
  def initialize(program,creator)
    @program = program
    @creator = creator
  end
  def description
    puts "I am the #{@creator} and this is my #{@program}"
  end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")

ruby.description
python.description
javascript.description

### Check @@ and $
class Computer
  $manufacturer = "Mango Computer, Inc."
  @@files = {hello: "Hello, world!"}

  def initialize(username, password)
    @username = username
    @password = password
  end

  def current_user
    @username
  end

  def self.display_files
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.


class MyClass
  $my_variable = "Hello!"
end

puts $my_variable


#Count the number of people - remember to include the = at the top of the class.
class Person
  # Set your class variable to 0 on line 3
  @@people_count = 0

  def initialize(name)
    @name = name
    # Increment your class variable on line 8
    @@people_count += 1
  end

  def self.number_of_instances
    # Return your class variable on line 13
    return @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")
juan = Person.new("Juan")
puts "Number of Person instances: #{Person.number_of_instances}"


def create_record(attributes, raise_error = false)
  record = build_record(attributes)
  yield(record) if block_given?
  saved = record.save
  set_new_record(record)
  raise RecordInvalid.new(record) if !saved && raise_error
  record
end


def create_record(attributes, raise_error = false)
  record = build_record(attributes)
  yield(record) if block_given?
  saved = record.save
  set_new_record(record)
  raise RecordInvalid.new(record) if !saved && raise_error
  record
end

# < MEANS INHERIT FORM THE OTHER CLASS
class ApplicationError
  def check_in
    puts "Error Error"
  end
end
class SecondApplication < ApplicationError

end

err = SecondApplication.new
err.check_in

#Overrides => creates a new method that generates a new entry
class Creature
  def initialize(name)
    @name = name
  end

  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature
  def fight
    return "Breathes fire!"
  end
end

# super takes the method from the first class
class Creature
  def initialize(name)
    @name = name
  end

  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature
  def fight
    puts "Instead of breathing fire..."
    super
  end
end

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
