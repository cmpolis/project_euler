n1, n2 = 1, 2
sum = 0
while n2 < 4000000
  sum += (n2 % 2 == 0) ? n2 : 0
  n1, n2 = n2, (n1 + n2) #iterate through fibonacci seq
end
puts sum
