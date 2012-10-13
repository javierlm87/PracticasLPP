# File:  test_Radio.rb
 
require "radio"
require "test/unit"
 
class TestSimpleRadio < Test::Unit::TestCase
   
  def test_simple
    assert_not_equal(0,Radio.new(5).radio())
  end
 
  def test_typecheck
    assert_raise( RuntimeError ) {Radio.new("juan")}
  end

  def numero_negativo
     assert_raise ( RuntimeError) {Radio.new(-5)}
  end
end







