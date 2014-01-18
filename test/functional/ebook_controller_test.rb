require 'test_helper'

class EbookControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
