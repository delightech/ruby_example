require 'test/unit'
require_relative '../my_class'

class TestMyClass < Test::Unit::TestCase

  def setup
    @m=MyClass.new
  end
  # test for circleci
  # check your circleci project env and context env
  def test_test
    assert_equal(ENV['PROJECT_ENV_1'], @m.test1)
    assert_equal(ENV['PROJECT_ENV_2'], @m.test2)
  end
end
