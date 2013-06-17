require 'test_helper'

class CardTypeTest < ActiveSupport::TestCase
  
  def setup
    @instance = CreditCard.new
  end
  
  test "valid_visa_card" do
    val =  @instance.validate_visa('4111111111111111')
    assert val, "Card is not a valid VISA"
    
    val =  @instance.validate_visa(' 4111 1111 1111 1111')
    assert val, "Card is not a valid VISA"
  end
  
  test "invalid_visa_card" do
    val =  @instance.validate_visa('41111111111111')
    assert !val, "Valid VISA but should not be"
  end
  
  test "valid_amex_card" do
    val =  @instance.validate_amex('378282246310005')
    assert val, "Card is not a valid AMEX"
    
    val =  @instance.validate_amex('3782 8224 6310 005 ')
    assert val, "Card is not a valid AMEX"
  end
  
  test "invalid_amex_card" do
    val =  @instance.validate_visa('368282246310005')
    assert !val, "Valid AMEX but should not be"
  end
  
  test "valid_master_card" do
    val =  @instance.validate_master_card('5105105105105100')
    assert val, "Card is not a valid MasterCard"
    
    val =  @instance.validate_master_card('5105 1051 0510 5106')
    assert val, "Card is not a valid MasterCard"
  end
  
  test "invalid_master_card" do
    val =  @instance.validate_visa('5605105105105100')
    assert !val, "Valid MasterCard but should not be"
    
    val =  @instance.validate_visa('5005105105105100')
    assert !val, "Valid MasterCard but should not be"
  end
  
  test "valid_discover_card" do
    val =  @instance.validate_discover_card('6011111111111117')
    assert val, "Card is not a valid Discover"
    
    val =  @instance.validate_discover_card('6011 1111 1111 1117')
    assert val, "Card is not a valid Discover"
  end
  
  test "invalid_discover_card" do
    val =  @instance.validate_visa('6012111111111117')
    assert !val, "Valid Discover but should not be"
  end
  
end