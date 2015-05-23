#!/usr/bin/env ruby
format = Proc.new do |name|
    puts "Hello, #{name}"
end
format.call("Hisa")

p = proc{|name| puts "Hello, #{name}"}
p.call("John")

l = lambda{|name| puts "Hello, #{name}"}
l.call("Bob")

lit = ->(name){ puts "Hello, #{name}"}
lit.call("Kikkawa")
