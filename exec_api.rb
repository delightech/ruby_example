require './heavy_api'

class ExecAPI
  def execute
    result = HeavyAPI.new.execute
    if result[:status] == 'success'
      # APIからデータが取得できた場合の処理
      # ...
    end
  end
end
