# frozen_string_literal: true

require 'net/http'

uri = URI.parse('https://jsonplaceholder.typicode.com/todos/1')
puts uri.host
puts uri.port
