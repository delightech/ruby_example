require './instance_eval_test'

class TestTest
  def initialize(b)
    @b = b
  end
  def test
    InstanceEvalTest.new do
      puts @a
      puts @b # ブロック引数を内部でinstance_evalしているため、ここは評価されない。instance_evalが評価されるのはレシーバ（ここではInstanceEvalTest）のインスタンス変数@aのみ
    end
  end
end

TestTest.new('bbbbb').test
