require 'test_helper'

class CreditCardTest < ActiveSupport::TestCase
  
  test "test_card_list" do
    #check we have the expected number of cards
    assert_equal 8, CreditCard.count, "Wrong number of credit cards, should be 8"
    
    #check the input file loaded with valid numbers
    CreditCard.all.each do |c|
      expected = !c.nil? && c.number.length > 0
      assert expected, "Credit card list is invalid"
    end
    
    $stdout.puts "\n-------------------------"
    $stdout.puts "CREDIT CARD LIST IS VALID"
    $stdout.puts "-------------------------"
    
    #print out validated card list to console
    $stdout.puts "\n------------------------------------------"
    CreditCard.order(:position).each do |c|
      #$stdout.puts "#{c.determine_type}: #{c.number} (#{c.validate})"
      printf("%-12s", "#{c.determine_type}:")
      printf("%-21s", "#{c.number}")
      printf("%-17s", "(#{c.validate})")
      $stdout.puts "\n"
    end
    $stdout.puts "------------------------------------------"
  end
  
end
