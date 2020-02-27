class InstanceEvalTest
  def initialize(&block)
    @a = 'aaaa'
    instance_eval(&block) if block_given?
  end
end
