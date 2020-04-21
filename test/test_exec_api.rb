require 'minitest/autorun'
require_relative '../exec_api'
require_relative '../heavy_api'

class TestExecAPI < Minitest::Test

  def test_exec
    h = HeavyAPI.new
    response = {status: 'success'}
    h.stub :execute, response do
      assert_equal(response, h.execute)
    end

    # assert_equal('success', h.execute)
  end
end
