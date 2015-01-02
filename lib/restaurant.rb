require_relative 'menu'
require_relative 'customer'

class Restaurant

  include Menu

  attr_reader :menu, :order, :customers

  def initialize(menu)
    @menu = menu
    @order = {}
    @customers = []
  end



end