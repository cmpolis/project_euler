start_time = Time.now

max_length, max_start = 0

(1..1000000).each do |i|
  test_length = 0
  path = i
  while path != 1
    path = (path % 2 == 0) ? (path / 2) : ((3 * path) + 1)
    test_length += 1
  end
  if test_length > max_length
    max_length, max_start = test_length, i
  end
end

puts max_start
puts Time.now - start_time
