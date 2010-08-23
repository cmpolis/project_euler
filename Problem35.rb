start_time = Time.now

# Does not include 5, numbers ending in 5 are divisible by 5
PrimeDigits = ["1","3","7","9"]

class Fixnum
  
  # Assume number being called on is odd
  def prime?
    (3..Math.sqrt(self)).all? { |i| self % i != 0 }
  end

  # Returns an array of numbers made by permutating the digits of self
  #  i.e 197.permutations => [197, 971, 719]
  def rotations
    digits = self.to_s
    rotations = [self]

    # Shift digits left
    (0...digits.length).each do |offset|
      temp = self.to_s
      temp << digits[0..offset]
      temp.slice!(0..offset)
      rotations << temp.to_i
    end

    # Shift digits right
    (0...digits.length).each do |offset|
      temp = self.to_s
      temp.insert(0, digits[-(offset + 1)..-1])
      temp.slice!(-(offset + 1)..-1)
      rotations << temp.to_i
    end

    rotations
  end
end

circular_primes = [2, 3, 5, 7] # Assume single digit circulars
(11...1000000).each do |testNum|
  
  # Order of statements in if is critical for efficiency
  #    i.e. propper short circuiting with and statements
  if testNum.to_s.split(//).all? { |digit| PrimeDigits.include? digit } \
   and !circular_primes.include? testNum \
   and testNum.rotations.all? {|i| i.prime? }
    # puts "Found: #{testNum.rotations.join(", ")}"
    circular_primes += testNum.rotations
  end
end

puts circular_primes.uniq.count
puts Time.now - start_time
