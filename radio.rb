class Radio
  def initialize(valor)
     @radio = 0
     raise "El argumento no es un numero " unless valor.is_a?(Numeric)
     raise "Valor no positivo o 0, el valor es #{valor}" unless valor > 0
     @perimetrocircunferencia = valor  
  end
 
  def radio ( )
    @radio = (@perimetrocircunferencia / (2 * Math::PI))
    puts "El radio es: #{@radio}"
  end
end




