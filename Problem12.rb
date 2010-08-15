start_time = Time.now

class Fixnum
  def divisor_count
    count = 2 # Assume one and self are divisors (self > 1)
    (2..(Math.sqrt(self).floor - 1)).each do |i|
      count += 2 if self % i == 0 # Divisors come in pairs...
    end
    count += 1 if Math.sqrt(self).integer? # Perfect square
    count
  end
end

triangle_num = 3
triangle_size = 2
begin
  triangle_num += (triangle_size += 1)
  dcount = triangle_num.divisor_count
end until triangle_num.divisor_count >= 500

puts triangle_num
puts Time.now - start_time

