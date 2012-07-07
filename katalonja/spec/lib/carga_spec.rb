require 'spec_helper'
require 'carga'

describe Carga do

	it "obtiene un error si la carga es mayor de 200" do
		carga_pescados = [100,100,100]
		expect { carga = Carga.new(carga_pescados) }.should raise_error 	
	end

	it "si se carga 50 de cada tipo de pescado se obntiene un total de 150" do
		carga_pescados = [50,50,50]
		ciudad = "Barcelona"
		carga = Carga.new(ciudad,carga_pescados) 
		carga.peso_total.should == 150	
	end

	it "el ingreso de la carga anterior a Barcelona es 50x450+50x120+50x0 " do  
		carga_pescados = [50,50,50]
		ciudad = "Barcelona"
		carga = Carga.new(ciudad,carga_pescados) 
		carga.ingreso_total.should == 50*450 + 50*120 + 50*0
	end

	it "la perdida por merma a Barcelona es (50x450+50x1100+50x0)*(1100/100)*0.01 " do  
		carga_pescados = [50,50,50]
		ciudad = "Barcelona"
		carga = Carga.new(ciudad,carga_pescados) 
		carga.perdida_merma.should == (50*450 + 50*120 + 50*0) * (1100/100) * 0.01
	end

end