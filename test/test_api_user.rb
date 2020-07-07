require 'minitest/autorun'
require_relative '../api_user.rb'
require_relative '../heavy_api'

class TestAPIUser < Minitest::Test

  def test_use_api
    u = APIUser.new

    response = {status: 'success', results: [{status: 'success', id: 1, name: 'yamada taro'}]}
    expected = [{id: 1, name: 'YAMADA TARO'}]

    # APIUser#api_callの結果をスタブ（response）で返す
    u.stub :api_call, response do
      assert_equal(expected, u.use_api)
    end

    #assert_equal(expected, u.use_api)
  end
end
