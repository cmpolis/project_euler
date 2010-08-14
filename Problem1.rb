set = (1..999).find_all {|i| i%3==0 || i%5==0 }
puts set.inject { |sum, n| sum + n }
