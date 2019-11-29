require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full_name returns the full name of user" do
  user = User.new(first_name: "nick", last_name: "joao")
  assert_equal "Nick Joao", user.full_name
  end
end
