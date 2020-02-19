#!/usr/bin/env ruby
# frozen_string_literal: true

message = catch :loop_back do
  loop do
    puts 'one'
    loop do
      puts 'two'
      throw :loop_back, 'loop backed!'
    end
  end
end
puts message
