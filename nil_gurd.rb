# 何らかのメソッドを持つクラス
class Botti
  attr_accessor :name
  def initialize(name)
    @name = name
  end 
end

# インスタンス（or nil）を返すメソッド
def factory(name)
  if name.empty?
    nil 
  else
    Botti.new(name)
  end 
end

# factoryメソッドがBottiクラスのインスタンスを返すケース
name = 'test'
b = factory(name)
pp b&.name
#=>"test"

# factoryメソッドがレシーバnilのオブジェクトを返すケース
name = ''
b = factory(name)
pp b&.name
#=>nil

# ボッチ演算子を使わない場合
pp b.name
#=>Traceback (most recent call last):
#=>nil_gurd.rb:24:in `<main>': undefined method `name' for nil:NilClass (NoMethodError)
