# determine the type of credit card for a given number
# Valid types are: VISA, AMEX, MasterCard and Discover
# for any other card types 'Unknown' is returned
module CardType
  
  def determine_type
    if validate_visa(self.number)
      return "VISA"
    elsif validate_amex(self.number)
      return "AMEX"
    elsif validate_master_card(self.number)
      return "MasterCard"
    elsif validate_discover_card(self.number)
      return "Discover"
    end
    
    return "Unknown"
  end
  
  def validate_visa(number)
    if !number.nil?
      stripped_num = remove_white_space(number)
      if stripped_num.start_with?('4') && (stripped_num.length == 13 || stripped_num.length == 16)
        return true
      end
    end
    
    return false
  end
  
  def validate_amex(number)
    if !number.nil?
      stripped_num = remove_white_space(number)
      if stripped_num.start_with?('34', '37') && (stripped_num.length == 15)
        return true
      end
    end
    
    return false
  end
  
  def validate_master_card(number)
    if !number.nil?
      stripped_num = remove_white_space(number)
      if (stripped_num =~ /[5][1-5](.*)/) && (stripped_num.length == 16)
        return true
      end
    end
    
    return false
  end
  
  def validate_discover_card(number)
    if !number.nil?
      stripped_num = remove_white_space(number)
      if stripped_num.start_with?('6011') && (stripped_num.length == 16)
        return true
      end
    end
    
    return false
  end
  
end