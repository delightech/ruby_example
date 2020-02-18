#!/usr/bin/env ruby
require './my_class'
my = MyClass.new
my.hello
my.length = ARGV[0]
puts "ARGV[0]=#{my.length}"

if my.length.nil?
    p 'ARGV[0] is nil!'
elsif my.length.to_i == 100
    p 'ARGV[0] is 100!'
else
    p 'ARGV[0] is not 100'
end
