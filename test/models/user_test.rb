require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def valid_params
    { username: "pete", email: "pete@example.com"}
  end

  def test_valid
    user = User.new(valid_params)

    assert(user.valid?, "Can't create! See test_valid")
  end

  def test_invalid_without_email
    params = valid_params.clone
    params.delete :email
    user = User.new(params)

    refute(user.valid?, "Can't be valid without email")
    assert(user.errors[:email], "Missing error when without email")
  end

  def test_username_is_unique
    user = User.create(valid_params)
    another_user = user.clone

    assert(another_user.valid?, "Username must be unique.")
  end

end
