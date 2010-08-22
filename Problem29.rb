start_time = Time.now

unique_exp = []
(2..100).each do |base|
  (2..100).each do |exp|
    val = base ** exp
    unique_exp << val if !unique_exp.include? val
  end
end

puts unique_exp.length
puts Time.now - start_time
