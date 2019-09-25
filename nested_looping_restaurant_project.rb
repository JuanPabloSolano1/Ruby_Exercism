class Restaurant
  attr_accessor :menu
  attr_accessor :orders
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    orders.inject(0) do |item_cost,order|
      item_cost + order.keys.inject(0) do |cost,key|
        cost + order[key] * @menu[key]
      end
    end
  end
end

menu = Restaurant.new({:rice => 3.5, :noodles => 2.3})
puts order_1 = menu.cost({:rice => 1, :noodles => 1},{:rice => 2, :noodles => 2}).round(2)
