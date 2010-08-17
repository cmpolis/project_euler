start_time = Time.now

# Dont use recursive algorithm i.e. fib = fib(n-1) + fib(n-2)
#     algorithm is O(fib(n))

fib1, fib2 = 1, 1
fib_count = 1
begin
  fib_count += 1
  fib1, fib2 = fib2, (fib1 + fib2)
end while fib1.to_s.length < 1000

puts fib_count
puts Time.now - start_time
