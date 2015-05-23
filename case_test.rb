#!/usr/bin/env ruby
test = ARGV[0]
a = case test
    when 'abc' then 'ABC'
    when 'bcd' then 'BCD'
    when 'efg','hij' then 'Other'
    else 'ELSE'
    end
puts a

b = case test
    when 'abc'
        'ABC'
    when 'bcd'
        'BCD'
    when 'efg','hij'
        'Other'
    else
        'ELSE'
    end
puts b

c = case
    when test == 'abc'
        'ABC'
    when test == 'bcd'
        'BCD'
    when test == 'efg' || test == 'hij'
        'Other'
    else
        'ELSE'
    end
puts c
