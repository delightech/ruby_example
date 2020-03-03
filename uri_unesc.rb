# frozen_string_literal: true

require 'uri'

if ARGV.length.zero?
  puts 'Argument required!'
  exit
end
puts URI.unescape(ARGV[0])
