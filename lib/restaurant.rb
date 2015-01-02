require_relative 'menu'
require_relative 'customer'

class Restaurant

  include Menu

  attr_reader :order, :customers

  def initialize
    @order = {}
    @customers = []
  end



end