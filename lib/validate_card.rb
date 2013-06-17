#validates a credit card by the Luhn algorithm
module ValidateCard
  
  def validate
    if !self.number.nil?
      stripped_num = remove_white_space(self.number)
      reversed_num = reverse(stripped_num)
      index = 0
      total = 0
      reversed_num.each_char do |c| 
        num = c.to_i
        if "odd" == odd_or_even(index)
          num = num * 2
        end
        num.to_s.split(//).map do |x| 
          total = total + x.to_i
        end
        index = index + 1
      end
      
      if total % 10 == 0
        return "valid"
      end
    end
    
    return "invalid"
  end
 
end