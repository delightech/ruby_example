# frozen_string_literal: true

require './parent'
class MyClass3 < Parent
  attr_accessor :length

  # class field
  @@comment = 'This is test'

  # 定数
  TEISU = 'これは定数です'

  # class method
  def self.hello
    puts "Hello, My object! #{@@comment}, #{TEISU}"
  end

  def initialize(val)
    self.length = val
  end

  def hi
    puts 'Hi guys!'
    super
  end
end
