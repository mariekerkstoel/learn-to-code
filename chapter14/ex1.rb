=begin
good examples: (try typing it)
def compose (proc1,proc2)
Proc.new do |x|
proc2.call(proc1.call(x))
end

double = Proc.new do |x|
x + x
end

square = Proc.new do |x|
x * x
end

double_then_square = compose(double,square)
square_then_double = compose(square, double)
to test:
double_then_square.call(5)
=end
=begin
def profile(block_description, &block)

  profile_on = false

  if profile_on
  start_time = Time.new
  block.call
  duration = Time.new - start_time

puts "The #{block_description} took #{duration} seconds"
  else
    block.call
  end

end

profile_on = true
puts profile 'count' do
  number = 1
  25.times do
    number = number + 1
  end
end
=end

def profile block_description, &block
profiling_on = false
  if profiling_on
      start_time = Time.new
      block.call
      duration = Time.new - start_time
      puts "#{block_description}: #{duration} seconds"
    else
      block.call
    end
end

profile 'count to a million' do
number = 0
1000000.times do
number = number + 1
end
end
