start_time = Time.now

class Fixnum
 
  def divisor_sum
    sum = 0
    (1..(self/2).ceil).each do |i|
      sum += i if self % i == 0
    end
    sum
  end
  
  def amicable?
    self == divisor_sum.divisor_sum && self != divisor_sum
  end
end

amicable_set = []
(1..10000).each do |num|
  amicable_set << num if num.amicable?
end

amicable_sum = 0
amicable_set.each { |am_num| amicable_sum += am_num }
puts amicable_sum
puts Time.now - start_time
