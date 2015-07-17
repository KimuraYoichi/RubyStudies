def counter_closure
  count = 0
  f = lambda {|n| count += n }
  return f
end

count = 10
counter = counter_closure
puts counter.call(1)
puts counter.call(2)
puts counter.call(3)
puts counter.call(4)
