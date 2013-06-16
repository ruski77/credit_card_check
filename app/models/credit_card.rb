require "card_type"
require "validate_card"
require "number_utils"

class CreditCard < ActiveRecord::Base
  include CardType
  include ValidateCard
  include NumberUtils
  
  attr_accessible :number, :position
end
