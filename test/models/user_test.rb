require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def valid_params
    {
      username: "peteR",
      email: "pete@example.com",
      password: "password", #not password_digest
      address: "11534 East Quicksilver Ave., Mesa, AZ, 85212 "
    }
  end

  def test_valid  #passing
    user = User.new(valid_params)

    assert(user.valid?, "Can't create! See test_valid")
  end

  def test_invalid_without_email        #passing because there is a no model validation for email
    params = valid_params.clone         #given that I enter valid params
    params.delete :email                #and I alter those params to not include an email
    user = User.create(params)          #and I try to create a user without valid params

    refute(user.valid?, "Can't be valid without email") #then the user object should not be saved
    assert(user.errors[:email], "Missing error when without email")
  end

  def test_username_is_unique           #passing
    user = User.create(valid_params)    #given a user is created with valid params
    another_user = user.clone           #and I create another user by cloning user

    assert(another_user.valid?, "Username must be unique.")
                                        #then another_user should not be saved
  end

  def test_downcase_callback            #passing
    user = User.new(valid_params)       #given a user enters uppercase anywhere in username
    user.save!

    assert_equal("peter", user.username)#it will be saved as downcase
  end

  def test_geocoder_creates_latandlong_values
    user = User.new(valid_params)       #given a user is instantiated with an address
    user.save!                          #and it is saved to the db

    assert_difference((user.latitude).size, 1)
                                        #then the lat and long attributes change from nil to 1
  end

end
