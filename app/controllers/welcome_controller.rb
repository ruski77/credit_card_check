class WelcomeController < ApplicationController
  def index
    @cards = CreditCard.order(:position)
  end
end
