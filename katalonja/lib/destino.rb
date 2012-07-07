class Destino 

	attr_reader :ingreso_neto, :destino_elegido

	def initialize(destinos,carga_pescados)
		@ingreso_neto = [0] * destinos.count  
		for i in 0..destinos.count - 1 do 
			@ingreso_neto[i] = obtiene_ingreso_neto(destinos[i],carga_pescados)
		end
		obtiene_destino_elegido(destinos)
	end 

	def obtiene_ingreso_neto(ciudad,carga_pescados)
		carga = Carga.new(ciudad,carga_pescados)
		return carga.ingreso_total - carga.perdida_merma - carga.costo_gasolina
	end

	def obtiene_destino_elegido(destinos)
		@destino_elegido = ""
		utilidad = -99999
		for i in 0..destinos.count - 1 do
			if @ingreso_neto[i] > utilidad
				@destino_elegido = destinos[i]
				utilidad = @ingreso_neto[i]
			end
		end
	end

end