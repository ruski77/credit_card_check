module NumberUtils
  
  def remove_white_space(number) 
    if !number.nil?
      return number.gsub(/\s+/, "")
    end
    
    return ""
  end
  
  def odd_or_even(number)
     if !number.nil?
       if number == 0
         return "invalid"
       end
       if number %2 == 0
         return "even"
       else 
         return "odd"
       end
     end
  end
  
  def reverse(number)
    loop = number.length       
    word = ''                  
    while loop > 0             
      loop -= 1                  
      word += number[loop]      
    end
    
    return word
  end
  
end