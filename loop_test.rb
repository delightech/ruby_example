#!/usr/bin/env ruby
# frozen_string_literal: true

i = 0
loop do
  print "TEST:#{i} "
  i += 1
  break if i == 10
end
i = 0
puts 'STOP'
while i < 10
  print "test:#{i} "
  i += 1
end
