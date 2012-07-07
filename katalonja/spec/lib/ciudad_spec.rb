require 'spec_helper'
require 'ciudad'

describe Ciudad do

	it 'La distancia a Madrid es 800' do 
		ciudad = Ciudad.new("Madrid")
		ciudad.distancia.should == 800
	end

	it 'La distancia a Barcelona es 1100' do 
		ciudad = Ciudad.new("Barcelona")
		ciudad.distancia.should == 1100
	end

	it 'La distancia a Lisboa es 600' do 
		ciudad = Ciudad.new("Lisboa")
		ciudad.distancia.should == 600
	end

	it "El costo de gasolina a Barcelona es 5 + 2*1100"  do
		ciudad = Ciudad.new("Barcelona")
		ciudad.costo_gasolina.should == 2205
	end

end