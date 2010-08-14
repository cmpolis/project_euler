require 'mathn'
n = 600851475143

=begin

BFS type algorithim, O(n), too slow for problem

factors = (1..(n/2)).find_all { |i| n % i == 0} 
prime_factors = factors.find_all { |i| i.prime? }
puts "pf: #{prime_factors}, #{factors}"
puts prime_factors.max

=end

# Still runs through every number...
#  finding factors, let alone prime factors hits a wall
(1..(n/2)).each do |i|
  if n % i == 0
    puts i
    puts "prime? #{i.prime?}"
  end
end
