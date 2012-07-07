require 'spec_helper'
require 'perfecto'

describe Perfecto do 

  it "obtiene error si se ingresa un valor no numerico" do
    perfecto = Perfecto.new("a")
    perfecto.error.should == true
  end

  it "obtiene error como el menor numero perfecto menor o igual a -5" do
    perfecto = Perfecto.new(-8)
    perfecto.error.should == true
  end

  it "obtiene 6 como el menor numero perfecto menor o igual a 8" do
    perfecto = Perfecto.new(8)
    perfecto.obtiene_numero_perfecto
    perfecto.numero_perfecto.should == 6
  end

  it "obtiene 28 como el menor numero perfecto menor o igual a 30" do
    perfecto = Perfecto.new(30)
    perfecto.obtiene_numero_perfecto   
    perfecto.numero_perfecto.should == 28
  end

  it "obtiene error como el menor numero perfecto menor o igual a 1" do
    perfecto = Perfecto.new(1)
    perfecto.obtiene_numero_perfecto   
    perfecto.error.should == true
  end

  it "obtiene error como el menor numero perfecto menor o igual a 0" do
    perfecto = Perfecto.new(0)
    perfecto.obtiene_numero_perfecto   
    perfecto.error.should == true
  end

end