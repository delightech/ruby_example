module Exec
  class Executor
    def open
      File.open(File.expand_path('../tmp.txt', __dir__)) { |f| puts f.readlines(chomp: true) }
    end
  end
end

# $0は実行されたファイル。下記は直接このスクリプトを実行した場合に呼び出される
if __FILE__ == $0
  Exec::Executor.new.open
end
