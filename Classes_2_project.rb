class Account
  attr_accessor :name
  attr_accessor :balance
  def initialize(name, balance)
    @name = name
    @balance = balance
    puts "This account is for #{@name} and the balance is: #{@balance}"
  end
  def deposit(pin_number,number)
    if pin_number == pin
      @balance += number
      puts "You have a new balance of #{@balance}"
    else
      puts "#{pin_error}"
    end
  end
  def withdrawal(pin_number,money)
    if pin_number == pin && @balance >= money
        @balance -= money
        puts "You have a new balance of #{@balance}"
    else
      puts "Please check your pin and the account balance"
    end
  end
  def check_balance(pin_number)
    if pin_number == pin
      puts "You have a balance of : #{@balance}"
    else
      puts "#{pin_error}"
    end
  end
  def pin_error
    puts "Pin is not correct"
  end
  def pin
    @pin = 12345
  end
end

my_account = Account.new("Eric", 1000)
my_account.withdrawal(11, 500)
my_account.check_balance(12345)
my_account.withdrawal(12345, 500)
my_account.check_balance(12345)
my_account.withdrawal(12345, 500)
my_account.check_balance(12345)
