# encoding: UTF-8

class Numero
	attr_accessor :numero

	def initialize(numero)
		@valor = numero
	end 

	def esPerfecto?  
		if @valor == sumaDivisoresSinNumero 
			return true 
		else
			return false
		end
	end

	def obtieneDivisores
		@divisores = []
		divisor = @valor 
		until divisor == 0
			residuo = @valor % divisor
			cociente = @valor / divisor   
			if residuo == 0
				@divisores.push cociente 
				divisor =  @valor / (cociente+1)
			else
				divisor = divisor - 1
			end
		end 
	end

	def muestraDivisores
		cadena = ""
		@divisores.each do |value|
			cadena = cadena + value.to_s + " "
		end
		return cadena  
	end

	def sumaDivisoresSinNumero
		suma = 0
		obtieneDivisores
		@divisores.each do |value|
			if @valor != value 
				suma = suma + value
			end  
		end
		return suma
	end

end

puts 'Por favor ingresa un número que deseas verificar si es perfecto'
cadena = gets.chomp.downcase 
if /\D/ =~ cadena
	puts 'Por favor ingresar un número entero'
else
	respuesta = cadena.to_i
	noEncontrado = true  
	while noEncontrado
		numero = Numero.new(respuesta) 
		if numero.esPerfecto?
			puts "El número perfecto más cercano es: " + respuesta.to_s
			puts "Sus divisores son: " + numero.muestraDivisores 
			noEncontrado = false 
		else
			respuesta = respuesta - 1
		end
	end
end