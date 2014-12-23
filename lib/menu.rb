module Menu

	def menu
    @menu = { Tortilla: 4, 
              Ham_croquetas: 6,
              Pimentos_de_padron: 5.5 }
  end

  def has_dishes?
    @dishes = true
  end

  def has_prices?
    @prices = true
  end

end