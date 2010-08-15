start_time = Time.now

# From problem 7 soution
class Fixnum
  def prime?
    (3..Math.sqrt(self)).all? { |i| self % i != 0 }
  end
end

# Assume 2 is prime, allows checking only odds
sum = 2
test_num = 3
while test_num < 2000000
  sum += test_num.prime? ? test_num : 0
  test_num += 2
end
puts sum
puts Time.now - start_time
