#!/usr/bin/env ruby
# frozen_string_literal: true

require './my_class3'
my = MyClass3.new(ARGV[0])
my.hi
MyClass3.hello
# my.set_length(ARGV[0])
puts "ARGV[0]=#{my.length}"

if my.length.nil?
  p 'ARGV[0] is nil!'
elsif my.length.to_i == 100
  p 'ARGV[0] is 100!'
else
  p 'ARGV[0] is not 100'
end
