require 'spec_helper'
require 'pescado'

describe Pescado do
	
	it "precio del pulpo en Barcelona es 120 " do 
		pescado = Pescado.new("Barcelona")
		pescado.precio_pulpo.should == 120
	end

	it "precio de la vieira en Barcelona es 450 " do 
		pescado = Pescado.new("Barcelona")
		pescado.precio_vieira.should == 450
	end

	it "precio de la centolla en Barcelona es 0 " do 
		pescado = Pescado.new("Barcelona")
		pescado.precio_centolla.should == 0
	end

end