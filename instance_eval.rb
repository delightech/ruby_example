# frozen_string_literal: true

class InstanceEval
  def initialize(&block)
    @a = 'aaaa'
    instance_eval(&block) if block_given?
  end

  def test
    puts 'TEST!'
  end
end
