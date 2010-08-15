start_time = Time.now

# Counts each letter for a number if written out
#   such that LetterSet[i] returns # of letters in i
LetterSet = [0, 3, 3, 5, 4, 4, 3, 5, 5, 4, 3,
              6, 6, 8, 8, 7, 7, 9, 8, 8, 6]
LetterSet[30], LetterSet[40], LetterSet[50], LetterSet[60] = 6, 5, 5, 5
LetterSet[70], LetterSet[80], LetterSet[90] = 7, 6, 6

class Fixnum
 
  # Calculates the number of letters if self was written out
  #   i.e. 'one hundred and fifteen' contains 20 letters
  #   per problem set, only works for 0<n<1000
  def word_length

    #Dont add if remainder is 0, i.e. NOT one hundred 'and zero'
    return self if self == 0

    # Add count for hundreds place if applicable
    if (self / 100) >= 1
      return 7 + LetterSet[(self/100).floor] + 
         (self % 100).word_length +
         ((self % 100 != 0) ? 3 : 0)  # 'and' whenver remainder != 0
    end

    if self > 20
      tens = (self/10).floor * 10
      ones = self % 10
      LetterSet[tens] + LetterSet[ones]
    else
      LetterSet[self]
    end
  end
end

# Manually add in 'one thousand', simpler algorithm w/o
sum = 11
(1..999).each { |n| sum += n.word_length }
puts sum
puts Time.now - start_time
