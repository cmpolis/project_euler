start_time = Time.now

sum = 0
(2 ** 1000).to_s.each_char { |digit| sum += digit.to_i }
puts sum
puts Time.now - start_time
