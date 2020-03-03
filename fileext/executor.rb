# frozen_string_literal: true

module FileExt
  class Executor
    def read
      File.open(File.expand_path('../tmp.txt', __dir__)).readlines(chomp: true)
    end

    def exec
      eval(File.open(File.expand_path('./lib/array.txt', __dir__)).read)
    end
  end
end

# $0は実行されたファイル。下記は直接このスクリプトを実行した場合に呼び出される
if __FILE__ == $PROGRAM_NAME
  e = FileExt::Executor.new
  # 行を配列として読み込む
  a = e.read
  pp a
  pp a[0]
  # textをRubyプログラムとして読み込む（ハッシュの配列を生成）
  ha = e.exec
  pp ha
  puts ha[0][:test]
end
