=begin

  Algorithm:
   - simple BFS type algorithm, no use of unnecessary data structures
                                       for traversal or position data
   - NOT a brute force algorithm, O(n) as opposed to O(n^2)
   
   1. Create an array that will hold the max value to get to a location
   2. Traverse next row, get the highest parent for each position
   3. Add highest value parent to new array for row being traversed
   4. Once row is complete, assign next_row into current_row 
   5. Repeat steps 2-4

=end

start_time = Time.now

# Returns value of largest parent
def max_parent col, row, arr
  if col == 0 # On left edge
    arr[0]
  elsif col == row # On right edge
    arr[col - 1]
  else
    (arr[col-1] > arr[col]) ? arr[col-1] : arr[col]
  end
end

problem_set = "75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

# Create jagged 2d array of ints from problem set
triangle = []
problem_set.each_line do |line|
  triangle << line.split.collect { |num| num.to_i }
end

# Maximum sum of traversal to spot in row
current_row = triangle[0]
next_row = []

# Find maximum for getting to each spot in triangle
(1..14).each do |row_count|
  (0..row_count).each do |next_row_column|
    next_row[next_row_column] = triangle[row_count][next_row_column]                  + max_parent(next_row_column, row_count, current_row)
  end
  current_row = next_row.clone
end

puts current_row.max
puts Time.now - start_time
   
