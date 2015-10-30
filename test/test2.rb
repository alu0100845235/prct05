require 'lib/fraccion'
#require '../lib/fraccion'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  def test_simple
    assert_equal("2/1", (Fraccion.new(1,1) + Fraccion.new(1,1)).to_s)
    assert_equal("1/1", (Fraccion.new(1,2) + Fraccion.new(1,2)).to_s)
    assert_equal("3/4", (Fraccion.new(1,4) + Fraccion.new(1,2)).to_s)
    assert_equal("11/12", (Fraccion.new(1,4) + Fraccion.new(2,3)).to_s)
    assert_equal("1/1", (Fraccion.new(2,1) + Fraccion.new(-1,1)).to_s)
    assert_equal("-1/4", (Fraccion.new(-1,2) + Fraccion.new(1,4)).to_s)
  end
  
  def test_type_check
    assert_raise(ArgumentError) { Fraccion.new('a','b') + Fraccion.new(1,2) }
  end
  
  def test_zero_division
    assert_raises(ZeroDivisionError) do
      assert_equal("0/0", (Fraccion.new(0,0) + Fraccion.new(1,1)).to_s)
    end
  end
  
end