start_time = Time.now

# Used to create high accuracy fractions
class UnitFraction
  Precision = 1500 # number of digits to calculate
  
  def initialize numerator
    @numerator = numerator
    @string = calculate_string
  end   

  # Returns decimal, without '0.'
  #   i.e. 1/3 returns "3333333..."
  def to_s
    @string
  end

  private

  # Performs long division manually
  # Uses same proccess as if it were written out
  # O(n)
  def calculate_string 
    string = "0"       # Algorithm neglects leading 0 
                       #  because remainder = 10 initially
    remainder = 10
    divisor = @numerator
    (1..Precision).each do 
      break if remainder == 0
      while divisor > remainder
        remainder = remainder * 10
        string << "0" if remainder.to_s.length <= divisor.to_s.length
      end
      string << (remainder / divisor).to_s
      remainder = remainder % ((remainder/divisor) * divisor)
    end
    string
  end
end

# Generate strings for unit fractions
unitFractions = []
(2..999).each do |i|
  unitFractions[i] = (UnitFraction.new i).to_s
end

def sub_pattern arr
  false
end

# Find patterns
maxLength, maxNum = 1, 0
unitFractions.each_with_index do |uf, index|
  next if index <= 2
  (1..100).each do |skip|
    (maxLength..200).each do |pattern_length|
      pos = skip

      # CHECK FOR SUB PATTERN!
      next if sub_pattern uf[pos..(pos + pattern_length)]
      
      found = false
      while !found && (uf[pos..(pos += pattern_length)] == uf[pos..(pos += pattern_length)])
        # puts uf[pos..(pos + pattern_length)]
        maxLength = pattern_length if pos > 1000
        maxNum = index if pos > 1000
        # puts "pattern found #{index}" if pos > 1000
        found = true if pos > 1000
      end
    end
  end
end

puts "Number: #{maxNum}, Pattern Length: #{maxLength}"
puts Time.now - start_time
