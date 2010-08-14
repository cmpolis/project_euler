solution_set = []
(100..999).each do |x|
  (100..999).each do |y|
    product = x * y
    prd_string = product.to_s

    # Didnt put in loop for efficiency
    #  would have to 'break' out or keep testing after differnce  
    if prd_string[0] == prd_string[-1]
      if prd_string[1] == prd_string[-2]
        if prd_string[2] == prd_string[-3]
          solution_set << product
        end  
      end
    end

  end
end

puts solution_set.max
