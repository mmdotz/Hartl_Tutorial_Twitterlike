require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "HartlTwitterlike"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | HartlTwitterlike"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | HartlTwitterlike"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | HartlTwitterlike"
  end

end
