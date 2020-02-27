# frozen_string_literal: true

require 'test/unit'
require_relative '../my_class'

class TestMyClass < Test::Unit::TestCase
  def setup
    @m = MyClass.new
  end

  # test for circleci
  # check your circleci project env and context env
  def test_test1
    puts 'env check for test1'
    # circleci上ではproject envのログはマスクされる（コンソール出力は「*****」が表示される）
    puts ENV['PROJECT_ENV_1']
    ENV['PROJECT_ENV_1'] ||= 'TEST1'
    assert_equal(ENV['PROJECT_ENV_1'], @m.test1)
  end

  def test_test2
    puts 'env check for test2'
    # circleci上ではproject envのログはマスクされる（コンソール出力は「*****」が表示される）
    puts ENV['PROJECT_ENV_2']
    ENV['PROJECT_ENV_2'] ||= 'TEST2'
    assert_equal(ENV['PROJECT_ENV_2'], @m.test2)
  end

  def test_test3
    @m.test3
  end
end
