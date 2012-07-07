class Perfecto

  attr_reader :error, :numero_perfecto

  def initialize(numero)
    @error = false
    if /\D/ =~ numero.to_s
      @error = true
    else
      @numero = numero.to_i
    end
  end

  def obtiene_numero_perfecto
    no_encontrado = true  
    respuesta = @numero
    while no_encontrado and respuesta > 0
      if respuesta == suma_divisores_sin_numero(respuesta)
        no_encontrado = false 
      else
        respuesta = respuesta - 1
      end
    end
    if respuesta > 0 
      @numero_perfecto = respuesta
    else
      @error = true
    end
  end

  def suma_divisores_sin_numero(valor)
    suma = 0
    obtiene_divisores(valor)
    @divisores.each do |elemento|
      if valor != elemento 
        suma = suma + elemento
      end  
    end
    return suma
  end

  def obtiene_divisores(valor)
    @divisores = []
    divisor = valor
    until divisor == 0
      if valor % divisor == 0
         @divisores.push valor/divisor 
      end
      divisor = divisor - 1
    end 
  end

end 