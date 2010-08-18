start_time = Time.now

puts (1..999).inject {|sum, n| sum + (n ** n) }.to_s[-10..-1]

puts Time.now - start_time
