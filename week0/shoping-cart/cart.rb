class ShoppingCart
  attr_accessor(:items)

  def initialize
    @items = []
  end

  def add(item)
    @items.push(item)
  end

  def checkout
    total = @items.reduce(0) do |sum, item|
      sum + item.price
    end

    if @items.size > 5
      total * 0.9
    else
      total
    end
  end
end
require_relative("lib/shopping_cart")
require_relative("lib/fruit")
require_relative("lib/houseware")
require_relative("lib/item")

orange = Fruit.new("orange", 10)
vacuum = Houseware.new("vacuum cleaner", 150)
juicer = Houseware.new("juicer", 90)
rice = Item.new("rice", 1)

cart = ShoppingCart.new
cart.add(orange)
cart.add(orange)
cart.add(vacuum)
cart.add(juicer)
cart.add(rice)
cart.add(rice)

puts "Your total is: $#{cart.checkout}."
