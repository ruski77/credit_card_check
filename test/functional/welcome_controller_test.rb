require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cards)
  end

end
