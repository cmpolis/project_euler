# Rewrote this algorithm multiple times, down to ~35sec runtime
#  currently O(n) efficiency - best possible?
# Constant 28123 outlined in problem as highest possible number that
#  cannot be created from a sum of abundunt numbers
start_time = Time.now

class Fixnum
  def sum_of_divisors
    sum = 0
    (1..(self/2).ceil).each {|i| sum += i if self % i == 0 }
    sum
  end

  def abundant?
    self < sum_of_divisors
  end
end

abundant_set = (1..28123).find_all { |num| num.abundant? }
problem_solution = 0 # Sum of all positive ints which cannot be written as
                     #   the sum of two abundant numbers
solution_set = []
(1..28123).each {|i| solution_set << i }

abundant_sums = []

abundant_set.each do |x|
  abundant_set.each do |y|
    break if (x + y) > 28124
    abundant_sums << (x + y)
  end
end

solution_set -= abundant_sums
solution_set.each {|i| problem_solution += i}

=begin 
OLD ALGORITHM => O(n^2)
(1..28123).each do |test|
  if !abundant_set.any? { |ab_num| ab_num < test && (test - ab_num).abundant? }
    problem_solution += test
  end
  puts "test: #{test}, #{problem_solution}"
end
=end

puts problem_solution
puts Time.now - start_time
