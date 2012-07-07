require 'spec_helper'
require 'numero_romano'

describe NumeroRomano do

	it "Si se pasa el valor de 1 retorna I" do
		numero_romano = NumeroRomano.new(1)
		numero_romano.valor_romano.should == "I" 
	end

	it "Si se pasa el valor de 5 retorna V" do
		numero_romano = NumeroRomano.new(5)
		numero_romano.valor_romano.should == "V" 
	end
	
	it "Si se pasa el valor de 10 retorna X" do
		numero_romano = NumeroRomano.new(10)
		numero_romano.valor_romano.should == "X" 
	end
	
	it "Si se pasa el valor de 50 retorna L" do
		numero_romano = NumeroRomano.new(50)
		numero_romano.valor_romano.should == "L" 
	end
	
	it "Si se pasa el valor de 100 retorna C" do
		numero_romano = NumeroRomano.new(100)
		numero_romano.valor_romano.should == "C" 
	end
	
	it "Si se pasa el valor de 500 retorna D" do
		numero_romano = NumeroRomano.new(500)
		numero_romano.valor_romano.should == "D" 
	end
	
	it "Si se pasa el valor de 1000 retorna M" do
		numero_romano = NumeroRomano.new(1000)
		numero_romano.valor_romano.should == "M" 
	end

	it "Si se pasa el valor 0 obtiene una excepcion" do
		expect { NumeroRomano.new(0) }.should raise_error
	end

	it "Si se pasa el valor 3001 obtiene una excepcion" do
		expect { NumeroRomano.new(3001) }.should raise_error
	end

	it "Si se pasa un valor invalido obtiene una excepcion" do
		expect { NumeroRomano.new("abc") }.should raise_error
	end

	it "Si se pasa el valor de 3000 retorna MMM" do
		numero_romano = NumeroRomano.new(3000)
		numero_romano.valor_romano.should == "MMM" 
	end

	it "Si se pasa el valor de 7 retorna VII" do
		numero_romano = NumeroRomano.new(7)
		numero_romano.valor_romano.should == "VII" 
	end

	it "Si se pasa el valor de 2008 retorna MMVIII" do
		numero_romano = NumeroRomano.new(2008)
		numero_romano.valor_romano.should == "MMVIII" 
	end
	it "Si se pasa el valor de 1999 retorna MCMXCIX" do
		numero_romano = NumeroRomano.new(1999)
		numero_romano.valor_romano.should == "MCMXCIX" 
	end

end