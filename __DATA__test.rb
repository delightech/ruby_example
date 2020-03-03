#!/usr/bin/env ruby
# frozen_string_literal: true

puts 'START'
puts

DATA.each_line do |line|
  puts line
end

puts
puts 'END'

__END__
ここから下はRubyプログラムではありません。
DATA.each_lineで
__END__以下のデータを
改行区切りで出力したものです。
