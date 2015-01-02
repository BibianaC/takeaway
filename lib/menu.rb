module Menu

	def dishes_list
    @dishes_list = { Tortilla: 4, 
                     Ham_croquetas: 6,
                     Pimentos_de_padron: 5.5 }
  end

  def dishes_names
    dishes_list.keys
  end

  def dishes_prices
    dishes_list.values
  end

end