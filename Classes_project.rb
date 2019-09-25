#You can either call the class using Self or CLASS.get_user

class Machine
  @@username = {}
  def initialize(user,password)
    @user = user
    @password = password
    @@username[user] = password
    @files = {}
  end
  def create(file)
    time = Time.now
    @file = file
    @files[file] = time
    puts "the #{@file} was created by #{@user} at #{time}"
  end

  def self.get_user
    return @@username
  end
end

juan = Machine.new("Juan",12345)
pedro = Machine.new("Pedro", 76543)
erika = Machine.new("Erika", 97654)
juan.create("Hello.txt")
pedro.create("Best_file.txt")
erika.create("Scrutis.pdf")
puts "#{Machine.get_user}"


class Computer
  @@users = {}
  def initialize(username,password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {}
  end
  def create(filename)
    time = Time.now
    @filename = filename
    @files[filename] = time
    puts "The #{@filename} was created by #{@username} at #{time}"
  end
  def Computer.get_users
    return @@users
  end
end

my_computer = Computer.new("Erika", 72767)
my_computer.create("Hello.txt")
puts "#{Computer.get_users}"
