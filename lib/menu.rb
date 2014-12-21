module Menu

  def initialize(dishes, prices)
    @dishes = dishes
    @prices = prices
  end

	def menu
    @menu = { Tortilla: 4, 
            Ham_croquetas: 6,
            Pimentos_de_padron: 5.5 }
  end

  def has_dishes?
    @dishes
  end

  def has_prices?
    @prices
  end

end