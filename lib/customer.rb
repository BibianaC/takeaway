require_relative 'menu'

class Customer

  include Menu

  attr_reader :order, :menu, :total_price

  def initialize(menu)
    @menu = menu
    @order = {}
    @total_price = 0
  end

  def add!(dishes, total_price)
    @order = @order.merge(dishes)
    @total_price += total_price

    total_value = 0
    dishes.each do |dish, quantity|
      total_value += quantity * dishes_list[dish]
    end
    raise 'Total price is not correct' if total_value != total_price
  end

  def delete!(dishes, total_price)
    dishes.each do |dish, quantity|
      if quantity == @order[dish]
        @order.delete(dish)
      elsif quantity > @order[dish]
        raise 'Quantity not correct'
      else
        @order[dish] -= quantity
      end
    end
    @total_price -= total_price
  end

end