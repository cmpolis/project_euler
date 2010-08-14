start_time = Time.now

class Fixnum
  def prfSquare?
    sqrt = Math.sqrt self
    sqrt == sqrt.to_i
  end
end

=begin
 Problem: a < b < c
          a + b + c = 1000
          a^2 + b^2 = c^2

 Bounds:  lim, a => 0
          b^2 = c^2, b = c
          b + c = 1000
          c < 500, b < 500

          lim, a => b
          a = b
          c < 334, b < 333, a < 332
      
          1 < a < 333
          1 < b < 500
          2 < c < 500
=end

(1..333).each do |a|
  (a..500).each do |b|
    c_squared = (a ** 2) + (b ** 2)
    c = Math.sqrt(c_squared)
    if c_squared.prfSquare? && (a + b + c) == 1000
      puts "a: #{a}, b: #{b}, c: #{c}"
      puts "Product: #{ a * b * c}"
      puts Time.now - start_time
    end
  end
end
