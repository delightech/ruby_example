# frozen_string_literal: true

require './instance_eval'

class ExecInstanceEval
  def initialize(b)
    @b = b
  end

  def test
    InstanceEval.new do
      puts @a
      # InstanceEvalTestのメソッドを呼び出すことも可能
      test
      # ブロック引数を内部でinstance_evalしているため、ここは評価されない。instance_evalが評価されるのはレシーバ（ここではInstanceEvalTest）のインスタンス変数@aのみ
      puts @b
    end
  end
end

ExecInstanceEval.new('bbbbb').test
