def solution_found n
  (1..20).all? { |i| n % i == 0}
end

testNum = 19 * 2

while !solution_found testNum
  testNum += 38 #(19 * 2) - must be even and divisible by 19 
end
puts testNum
