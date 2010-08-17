start_time = Time.now

factorial = 1
(1..100).each do |i|
  factorial = factorial * i
end

digit_sum = 0
factorial.to_s.each_char { |digit| digit_sum += digit.to_i }

puts digit_sum
puts Time.now - start_time
