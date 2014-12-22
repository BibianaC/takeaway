module Menu

  def initialize(dishes, prices)
    @dishes = dishes
    @prices = prices
  end

	def menu
    @menu = [{ dish: Tortilla, price: 4 }, 
             { dish: Ham_croquetas, price: 6 },
             { dish: Pimentos_de_padron, price: 5.5 }]
  end

  def has_dishes?
    @dishes
  end

  def has_prices?
    @prices
  end

end