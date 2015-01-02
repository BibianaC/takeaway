require_relative 'menu'

class Customer

  include Menu

  attr_reader :order, :menu

  def initialize(menu)
    @menu = menu
    @order = {}
  end

end