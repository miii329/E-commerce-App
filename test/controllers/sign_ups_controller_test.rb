require "test_helper"

class SignUpsControllerTest < ActionDispatch::IntegrationTest
  test "view sign up" do
    get sign_up_path
    assert_response :success
  end

  test "view sign up when authenticated" do
  sign_in_as users(:one)
  get sign_up_path
  assert_redirected_to root_path
end
end