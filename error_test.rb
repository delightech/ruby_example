#!/usr/bin/env ruby

puts "開始"
puts 'test1'
begin
    1/0
rescue ZeroDivisionError
    puts "errorを握り潰す"
ensure
    puts 'ここは必ず実行される'
end
puts ''
puts 'test2'
begin
    raise StandardError, 'error!'
rescue Exception => e
    puts e.class
    puts e.message
    puts e.backtrace
ensure
    puts 'ここは必ず実行される'
end
puts ''
puts 'test3'
begin
    puts '正常な処理'
rescue Exception => e
    puts 'ここはエラーじしか通らない'
else
    puts '正常な場合のみ実行される'
ensure
    puts 'ここは必ず実行される'
end
puts ''
puts 'test4'
failed = 0
begin
    raise StandardError, 'error!'
rescue Exception => e
    failed+=1
    puts "Retryします count:#{failed}回"
    retry if failed < 3
ensure
    puts 'ここは必ず実行される'
end
puts "終了"

