require 'test_helper'

class ValidateCardTest < ActiveSupport::TestCase
  
  test "test_valid_card" do
    card = CreditCard.new(:number => '4408 0412 3456 7893')
    valid = card.validate
    assert_equal "valid", valid, "Card is Invalid"
  end
  
  test "test_invalid_card" do
    card = CreditCard.new(:number => '4417 1234 5678 9112')
    valid = card.validate
    assert_equal "invalid", valid, "Card is invalid"
  end
  
  test "test_valid_visa_card" do
    card = CreditCard.new(:number => '4111111111111111')
    valid = card.validate
    assert_equal "valid", valid, "Visa Card is Invalid"
  end
  
  test "test_valid_amex_card" do
    card = CreditCard.new(:number => '378282246310005')
    valid = card.validate
    assert_equal "valid", valid, "Amex Card is Invalid"
  end
  
  test "test_valid_discover_card" do
    card = CreditCard.new(:number => '6011111111111117')
    valid = card.validate
    assert_equal "valid", valid, "Discover Card is Invalid"
  end
  
  test "test_valid_master_card" do
    card = CreditCard.new(:number => '5105105105105100')
    valid = card.validate
    assert_equal "valid", valid, "Master Card is Invalid"
  end
  
  
end