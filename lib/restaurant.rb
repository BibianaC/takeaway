require_relative 'menu'
require_relative 'customer'

class Restaurant

  include Menu

  attr_reader :menu, :customers

  def initialize(menu)
    @menu = menu
    @customers = []
  end

  def receive!(customer)
    @customers << customer
  end

  def has_orders?
    return false if @customers.empty?
    @customers.each do |customer|
      return true if !customer.order.empty?
    end
    return false  
  end

end