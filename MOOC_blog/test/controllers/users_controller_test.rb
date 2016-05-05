require 'test_helper'

class UsersControllerTest < ActionController::TestCase
   test "the truth" do
     assert true
   end
end

 def test_create
  # Simulate a POST response with the given HTTP parameters.
  post(:create, :user => { :name => "Ahmed" })

  # Assert that the controller tried to redirect us to
  # the created user's URI.
  assert_response :found

  # Assert that the controller really put the user in the database.
  assert_not_nil User.find_by_name("Ahmed")
end