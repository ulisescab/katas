class NumeroRomano

	attr_reader :valor_romano

	CADENA_UNIDAD 	= ["I","II","III","IV","V","VI","VII","VIII","IX"]
	CADENA_DECENA 	= ["X","XX","XXX","XL","L","LX","LXX","LXXX","XC"]
	CADENA_CENTENA 	= ["C","CC","CCC","CD","D","DC","DCC","DCCC","CM"]
	CADENA_MILLAR 	= ["M","MM","MMM"]
	NUMERO_MAXIMO 	= 3000
	NUMERO_MINIMO  	= 1

	def initialize (numero_arabigo)
		if /\D/ =~ numero_arabigo.to_s
			raise ArgumentError.new("Numero ingresado invalido") 
	 	elsif numero_arabigo > NUMERO_MAXIMO or numero_arabigo < NUMERO_MINIMO
			raise ArgumentError.new("Numero debe estar entre 1 y 3000") 
	 	else
			obtiene_valor_a_convertir(numero_arabigo)
		end
	end

	def obtiene_valor_a_convertir(numero_arabigo)
		valor_millar = ""
		numero_restante = numero_arabigo
		if numero_arabigo >= 1000
			valor_millar = CADENA_MILLAR[numero_restante.to_s[0].to_i - 1]
		end
		valor_centena = ""	
		numero_restante = numero_restante - (numero_restante / 1000 ) * 1000
		if numero_restante >= 100
			valor_centena = CADENA_CENTENA[numero_restante.to_s[0].to_i - 1]
		end
		valor_decena = ""
		numero_restante = numero_restante - (numero_restante / 100 ) * 100
		if numero_restante >= 10
			valor_decena = CADENA_DECENA[numero_restante.to_s[0].to_i - 1]
		end
		valor_unidad = ""
		numero_restante = numero_restante - (numero_restante / 10 ) * 10
		if numero_restante > 0
			valor_unidad = CADENA_UNIDAD[numero_restante-1]
		end
		@valor_romano = valor_millar + valor_centena + valor_decena + valor_unidad 
	end

end