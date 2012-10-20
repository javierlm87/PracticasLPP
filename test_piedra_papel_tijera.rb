# File:  test_piedra_papel_tijera.rb
 

load "piedra_papel_tijera.rb"

require "test/unit"
 

class TestSimplePiedra_Papel_Tijera < Test::Unit::TestCase
   
  

   
  

def test_simple
    
   assert_not_equal("piedra",Piedra_Papel_Tijera.new().jugar("papel"))
  
end

def test_cadenaErronea
    
   assert_raise (RuntimeError) {Piedra_Papel_Tijera.new().jugar("capitan")}
  
end
 
  
def test_typecheck
    
   assert_raise( RuntimeError ) {Piedra_Papel_Tijera.new().jugar(5)}
  
end

  
end







