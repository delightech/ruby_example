require './heavy_api'

class APIUser

  def use_api
    result = api_call
    if result[:status] == 'success'
      # APIからデータが取得できた場合の処理
      result[:results].map {|r| {id: r[:id], name: r[:name].upcase}}
    else
      []
    end
  end

  private def api_call
    HeavyAPI.new.execute
  end
end
