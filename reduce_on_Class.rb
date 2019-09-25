class Restaurant
  attr_accessor :menu
  def initialize(menu)
    @menu = menu
  end

  def cost(orders)
    new_list = []
    orders.each do |key,value|
      menu.each do |key1,value1|
        if key == key1
          new_list << (value1 * value)
        end
      end
    end
    print new_list.reduce(&:+)
  end
end

menu = Restaurant.new({:rice => 1.50, :noodles => 2.30})
order1 = menu.cost({:rice => 2, :noodles => 2})
