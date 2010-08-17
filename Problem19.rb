start_time = Time.now

require 'date'

# Taking advantage of Ruby's 'date' class.
date = Date.parse "1901-01-01"
end_date = Date.parse "2000-12-31"

sunday_on_first = 0 # Count of # of sundays on the first of the month

while date < end_date
  date = date >> 1
  sunday_on_first += 1 if date.wday == 0
end 

puts sunday_on_first
puts Time.now - start_time
  
