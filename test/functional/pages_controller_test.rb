require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home:string" do
    get :home:string
    assert_response :success
  end

  test "should get about:string" do
    get :about:string
    assert_response :success
  end

  test "should get contact:string" do
    get :contact:string
    assert_response :success
  end

end
