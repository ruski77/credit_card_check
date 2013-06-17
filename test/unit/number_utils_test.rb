require 'test_helper'

class NumberUtilsTest < ActiveSupport::TestCase
  
  def setup
    @instance = CreditCard.new
  end
  
  test "remove_white_space_number" do
    number =  @instance.remove_white_space('5105 1051 0510 5106 ')
    assert_equal "5105105105105106", number, "Stripped number not as expected"
  end
  
  test "is_number_odd" do 
    val =  @instance.odd_or_even(1)
    assert_equal "odd", val, "Value was even when should be odd"
  end
  
  test "is_number_even" do 
    val =  @instance.odd_or_even(10)
    assert_equal "even", val, "Value was odd when should be even"
  end
  
  test "for_zero" do 
    val =  @instance.odd_or_even(0)
    assert_equal "invalid", val, "Value was invalid for 0 input"
  end
  
  test "reverse_number" do
    val = @instance.reverse('1234567890')
    assert_equal "0987654321", val, "Result was not reverse of input"
  end
  
end