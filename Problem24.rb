start_time = Time.now

def fact(num)
  return 1 if num <= 1
  num * fact(num-1)
end

available_nums = []
(0..9).each { |i| available_nums << i }

value = 999999   # Subtract from this for each digit
solution = []
p_val = 0        # 'Permutation index', where to take from available nums

(0..9).each do |digit|
  p_val = (value / fact(9-digit))
  solution << available_nums.delete_at(p_val)
  value -= (p_val * fact(9-digit))
end

puts solution.join ""
puts Time.now - start_time

