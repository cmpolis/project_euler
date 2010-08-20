start_time = Time.now

answer_sum = 0
(1..999999).each do |i|
  sum = 0
  i.to_s.each_char { |digit| sum += digit.to_i ** 5 }
  if sum == i
    puts i
    answer_sum += i
  end
end

puts answer_sum
puts Time.now - start_time
