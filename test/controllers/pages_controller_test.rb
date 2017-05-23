require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title" , "home | Mon App"
  end

  test "should get aide" do
    get :aide
    assert_response :success
    assert_select "title" , "aide | Mon App"
  end
  test "should get contact" do
  get :contact
  assert_response :success
  assert_select "title" , "contact | Mon App"
  end


end
