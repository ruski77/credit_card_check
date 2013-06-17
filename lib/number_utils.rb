# a set of utility methods for formatting a number
module NumberUtils
  
  #remove white space, new line and tab characters from given number
  def remove_white_space(number) 
    if !number.nil?
      return number.gsub(/\s+/, "")
    end
    
    return ""
  end
  
  #determine if a given number is odd or even
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
  
  #reverse the given number
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