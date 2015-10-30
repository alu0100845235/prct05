require 'lib/fraccion'
#require '../lib/fraccion'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  
  def test_simple
    assert_equal("2/3", Fraccion.new(2,3).to_s)
    assert_equal("1/1", Fraccion.new(1,1).to_s)
    assert_equal("-1/-1", Fraccion.new(-2,-2).to_s)
    assert_equal("1/-2", Fraccion.new(1,-2).to_s)
  end
  
  def test_type_check
    assert_raise(ArgumentError) {Fraccion.new('a','b')}
  end
  
end