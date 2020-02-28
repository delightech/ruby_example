class Block
  def initialize(val)
    @val = yield(val) if block_given?
  end

  def val
    puts @val
  end
end

Block.new('TEST1') { |v| puts v }

b = Proc.new { |v| puts v + 'testtest' }
block = Block.new('TEST2', &b)

b = Proc.new { puts 'Procは引数チェックされないのでエラーにならない' }
Block.new('TEST3', &b)

l = lambda { |v| puts 'lambda' + v }
Block.new('TEST4', &l)
begin
  l = lambda { puts 'lambda' }
  Block.new('TEST5', &l)
rescue
  puts 'lamdaは引数チェックされるのでエラーになる'
end

l = lambda do |v|
  puts v + 'lambda'
end
Block.new('TEST6', &l)

b = proc { |v| puts 'proc' + v }
Block.new('TEST7', &b)

Block.new('TEST8', &:downcase).val

l = -> (v) { puts 'lambda(arrow) ' + v }
Block.new('TEST9', &l)


class Block2
  def initialize(val, &block)
    if block_given?
      block.call(val)
    else
      puts val
    end
  end
  def b
    yield if block_given?
    puts 'end of b def'
  end
  def proc_exec
    pr = Proc.new { return 'abc' }
    pr.call
    puts 'not exec this line'
  end
  def lambda_exec
    pr = -> { return 'abc' }
    pr.call
    puts 'exec this line'
  end
end

Block2.new('TEST10') { |v| puts v }

b = Proc.new { |v| puts v + 'testtest' }
Block2.new('TEST11', &b)

# Proc内でreturnすると、Procが生成されたメソッドを抜ける。
# lambdaの場合、returnしても後の処理が実行される。
Block2.new('TEST12').proc_exec
Block2.new('TEST13').lambda_exec

l = lambda do
  puts 'before return lambda'
  return
end
Block2.new('TEST14').b(&l)
puts 'exec this line'

# Procを生成したのがトップレベルだと、そのProc内でreturnした場合にプログラム自体が終了してしまうので注意
b = Proc.new do
  puts 'before return proc'
  return
end
Block2.new('TEST15').b(&b)
puts 'not exec this line'
