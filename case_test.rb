#!/usr/bin/env ruby
# frozen_string_literal: true

test = ARGV[0]
a = case test
    when 'abc' then 'ABC'
    when 'bcd' then 'BCD'
    when 'efg', 'hij' then 'Other'
    else 'ELSE'
    end
puts a

b = case test
    when 'abc'
      'ABC'
    when 'bcd'
      'BCD'
    when 'efg', 'hij'
      'Other'
    else
      'ELSE'
    end
puts b

c = if test == 'abc'
      'ABC'
    elsif test == 'bcd'
      'BCD'
    elsif test == 'efg' || test == 'hij'
      'Other'
    else
      'ELSE'
    end
puts c
