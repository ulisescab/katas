class Ciudad

	attr_reader :distancia, :costo_gasolina

	NOMBRE_CIUDAD = ["Madrid", "Barcelona", "Lisboa"]
	DISTANCIA_CIUDAD = [800, 1100, 600]
	COSTO_INICIAL = 5
	COSTO_POR_KM	= 2

	def initialize(ciudad)
		obtiene_datos(ciudad)
	end

	def obtiene_datos(ciudad)
		for i in 0..2
			if ciudad == NOMBRE_CIUDAD[i]
				@distancia = DISTANCIA_CIUDAD[i]
				@costo_gasolina = COSTO_INICIAL + COSTO_POR_KM * DISTANCIA_CIUDAD[i]
				break
			end
		end
	end

end