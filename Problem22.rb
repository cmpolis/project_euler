start_time = Time.now

Offset = 64 # Offset between ascii byte value of capitol letters
            #  and counting letters from 1 to 26
            # i.e. 'A' = 65, 'A' - offset = 1

raw_names = IO.read "names.txt"
names = raw_names.split(/\W+/).sort
names.delete ""

sum_of_scores = 0
names.each_with_index do |name, rank|
  name_subscore = 0
  name.each_byte { |char| name_subscore += (char - Offset)}
  sum_of_scores += ((rank + 1) * name_subscore)

  puts "COLIN: #{name_subscore} * #{rank+1} " if name == "COLIN"
end

puts sum_of_scores
puts Time.now - start_time

