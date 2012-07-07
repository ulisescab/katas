class Pescado

	attr_reader :precio_vieira, :precio_pulpo, :precio_centolla

	PRECIOS_VIEIRA 		= {"Madrid" => 500, "Barcelona" => 450, "Lisboa" => 600}
	PRECIOS_PULPO 		= {"Madrid" => 0, "Barcelona" => 120, "Lisboa" => 100}
	PRECIOS_CENTOLLA	= {"Madrid" => 450, "Barcelona" => 0, "Lisboa" => 500}

	def initialize(ciudad)
		@precio_vieira 		= PRECIOS_VIEIRA[ciudad]
		@precio_pulpo 		= PRECIOS_PULPO[ciudad]
		@precio_centolla 	= PRECIOS_CENTOLLA[ciudad]
	end

end