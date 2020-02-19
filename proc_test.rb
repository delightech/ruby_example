#!/usr/bin/env ruby
# frozen_string_literal: true

format = proc do |name|
  puts "Hello, #{name}"
end
format.call('Hisa')

p = proc { |name| puts "Hello, #{name}" }
p.call('John')

l = ->(name) { puts "Hello, #{name}" }
l.call('Bob')

lit = ->(name) { puts "Hello, #{name}" }
lit.call('Kikkawa')
