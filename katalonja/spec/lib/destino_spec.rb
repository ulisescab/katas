require 'spec_helper'
require 'destino'

describe Destino do 

	it "el ingreso neto de la carga anterior a Barcelona UT - PM - GA" do  
		carga_pescados = [50,50,50]
		destinos = ["Madrid", "Barcelona", "Lisboa"]
		destino = Destino.new(destinos,carga_pescados) 
		destino.ingreso_neto[1].should == (50*450 + 50*120 + 50*0) - (50*450 + 50*120 + 50*0)*(1100/100) * 0.01 - 2205
	end

	it "dado la carga del problema 50, 100, 50 el destino elegido es Lisboa" do  
		carga_pescados = [50,100,50]
		destinos = ["Madrid", "Barcelona", "Lisboa"]
		destino = Destino.new(destinos,carga_pescados) 
		destino.destino_elegido.should == "Lisboa"
	end

end