start_time = Time.now
ProblemSize = 1001

sum, spot, level = 1, 1, 2
# Sum is the sum of diagonal values 
# Spot is location used to iterate through block
# Level is the increment value between corners

while spot < ProblemSize ** 2
  (0..3).each { |corner| sum += (spot += level) }
  level += 2
end

puts sum
puts Time.now - start_time
