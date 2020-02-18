require 'test/unit'
require_relative '../my_class'

class TestMyClass < Test::Unit::TestCase

  def setup
    @m=MyClass.new
  end
  def test_test
    assert_equal("TEST", @m.test)
  end
end
