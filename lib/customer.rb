require_relative 'menu'

class Customer

  include Menu

  attr_reader :order, :menu

  def initialize(menu)
    @menu = menu
    @order = []
  end

  def add!(dish)
    order << dish
  end

  def delete!(dish)
    order.delete(dish)
  end

end