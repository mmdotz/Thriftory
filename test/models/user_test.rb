require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def valid_params
    {
      username: "peteR",
      email: "pete@example.com",
      password_digest: "password"
    }
  end

  def test_valid
    user = User.new(valid_params)

    assert(user.valid?, "Can't create! See test_valid")
  end

  def test_invalid_without_email #passing because there is a model validation for password length
    params = valid_params.clone #given that I valid params
    params.delete :email #and I alter those params to not include an email
    user = User.create(params) #and I try to create a user without valid params

    refute(user.valid?, "Can't be valid without email") #then the user object should not be saved
    assert(user.errors[:email], "Missing error when without email")
  end

  def test_username_is_unique
    user = User.create(valid_params) #given a user is created with valid params
    another_user = user.clone #and I create another user by cloning user

    assert(another_user.valid?, "Username must be unique.") #then another_user should not be saved
  end

  def test_downcase_callback
    user = User.new(valid_params)
    user.save

    assert_equal("peter", user.username)
  end

  def test_geocoder_creates_latandlong
    #address is saved then geocoder adds lat and long to record
  end

end
