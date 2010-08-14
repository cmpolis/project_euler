class Fixnum
  def prime?
    # Only test up to square root, alot faster than up to self/2
    (3..Math.sqrt(self)).all? { |i| self % i != 0 }
  end
end

startTime = Time.now
prime_count = 1
test_num = 3 #Assume 2 is prime, allows checking odds only 
while prime_count < 10001 do
  prime_count += 1 if test_num.prime?
  test_num += 2 #Only test odds
end
puts test_num - 2 #Goes one iteration past 10001st prime
puts Time.now - startTime
