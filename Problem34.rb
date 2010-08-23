start_time = Time.now

# Factorials are hardcoded instead of constantly recalculating
# Factorial[i] = i!
Factorial = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]

sum_curious = 0 # Sum of curious numbers

# Rough upper bound is 9! * 6
(3..2177280).each do |testNum|
  curious = 0 # Factorial sum of digits for testNum
  testNum.to_s.split(//).each { |i| curious += Factorial[i.to_i] }
  sum_curious += testNum if testNum == curious
end

puts sum_curious
puts Time.now - start_time  
