class HeavyAPI
  def execute
    # 30秒sleep（実際はHTTPリクエストやDBアクセスなど）
    sleep(30)
    {status: 'success', results: [{status: 'success', id: 1, name: 'yamada taro'}]}
  end
end
