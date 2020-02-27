# frozen_string_literal: true

require 'open3'
class MyClass
  attr_accessor :length

  def test1
    'TEST1'
  end

  def test2
    'TEST2'
  end

  def test3
    out, err, status = Open3.capture3("node #{File.expand_path('./', __dir__)}/puppeteer_test.js")
    puts out
    puts err
    raise 'Error occurred by node.js code!!!' if status != 0
  end
end
