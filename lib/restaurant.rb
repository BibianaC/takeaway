require_relative 'menu'

class Restaurant

  include Menu

  attr_reader :order

  def initialize
    @order = {}
  end

end