require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user without uid and name" do
    user = User.new
    assert_not user.save, "Save the user without uid and name"
  end
end
