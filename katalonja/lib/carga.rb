class Carga

	CARGA_MAXIMA 	= 200
	VALOR_MERMA		= 0.01

	attr_reader :peso_total, :ingreso_total, :perdida_merma, :costo_gasolina 

	def initialize(ciudad,carga_pescados)
		obtiene_peso_carga(carga_pescados)
		if @peso_total > CARGA_MAXIMA
			raise ArgumentError("Carga maxima superada")
		end
		obtiene_utilidad_carga(ciudad,carga_pescados)
		obtiene_perdida_merma(ciudad,carga_pescados)
		obtiene_costo_gasolina(ciudad)
	end

	def obtiene_peso_carga(carga_pescados)
		suma = 0
		carga_pescados.each  { |elemento| suma += elemento }
		@peso_total = suma
	end

	def obtiene_utilidad_carga(ciudad,carga_pescados)
		pescado = Pescado.new(ciudad) 
		@ingreso_total = carga_pescados[0]*pescado.precio_vieira 
		@ingreso_total += carga_pescados[1]*pescado.precio_pulpo 
		@ingreso_total += carga_pescados[2]*pescado.precio_centolla
	end

	def obtiene_perdida_merma(ciudad,carga_pescados)
		destino = Ciudad.new(ciudad)
		@perdida_merma = @ingreso_total * ( destino.distancia / 100 ) * VALOR_MERMA 
	end

	def obtiene_costo_gasolina(ciudad)
		destino = Ciudad.new(ciudad)
		@costo_gasolina = destino.costo_gasolina
	end

end