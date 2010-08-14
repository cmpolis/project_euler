sum_of_squares = 0
square_of_sums = 0
simple_sum = 0
(1..100).each do |i|
  sum_of_squares += i ** 2
  simple_sum += i
end
square_of_sums = simple_sum ** 2
puts (square_of_sums - sum_of_squares)
