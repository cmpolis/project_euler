start_time = Time.now

class String
  def palindrome?
    (0..(length/2)).all? { |index| self[index] == self[-(index+1)] }
  end
end

sum = 0

(1..1000000).each do |i|
  sum += i if i.to_s.palindrome? and i.to_s(2).palindrome?
end

puts sum
puts Time.now - start_time
